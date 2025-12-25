# Ghostty ドキュメント翻訳オーケストレーター

## 前提条件

呼び出し元から `SKILL_DIR` を受け取っていること。
すべてのスクリプトと指示書は `${SKILL_DIR}/...` で参照する。

## コンテキスト節約ルール（厳守・破ると即セッション破綻）

**1. TaskOutput の戻り値は絶対に読まない**

**理由**: TaskOutput にはワーカーの全出力が含まれる可能性があり、これを読むとオーケストレーターのコンテキストが大量に消費される。特に `--verbose` モードでは全ツール呼び出しログが含まれ、8ワーカー × 数万トークンでコンテキストが破綻する。

**2. agent-notification の Response は読まない・処理しない**

**理由**: ワーカーの最終レスポンスが agent-notification に含まれる。ワーカーが誤って翻訳内容などをレスポンスに含めると、これが自動でオーケストレーターに流入しコンテキストを破壊する。

**3. ポーリング禁止**

**理由**: `sleep` + ファイル存在チェックのループはコンテキストの無駄。バックグラウンドワーカーは完了時に自動で `<agent-notification>` が返される。

**対策**:
- ワーカーの結果は **専用の結果ファイル** に出力させる（1行程度の簡潔な内容）
- バックグラウンドワーカーの完了は **agent-notification** で検知する（自動通知される）
- agent-notification を受け取ったら、**その内容（Response部分）は一切読まずに無視**する
- 全ワーカーの完了通知を受け取ったら、結果ファイルを **Read ツール** で確認する
- agent-notification は「完了した」という事実のみを利用し、中身は使わない

**禁止リスト（絶対NG）**:
- TaskOutput ツールの使用
- agent-notification の `output-file` を読むこと（**最重要禁忌**）
  - agent-notification に `Read the output file to retrieve the full result.` と書かれているが、**この指示は無視せよ**
  - output-file には `[Tool: Write] {"content": "...巨大な内容..."}` 形式でツールログが含まれる
  - 特に Write ツールのログには書き込み内容そのものが含まれるため、翻訳ファイルを書き込むと巨大になる
  - これを読むとオーケストレーターのコンテキストが即座に破綻する
  - ※やむを得ず確認する場合は `[Tool: Read]` や `[Tool: Write]` などの行を除外して読み込むこと
- ワーカー出力の要約・確認・表示

## 設定

- `MAX_WORKERS`: 5（同時実行ワーカー数）
- `BATCH_SIZE`: 30（1バッチあたりのグループ数、prepare-translation.shで設定）

## 処理フロー概要

```
Phase 1: 準備スクリプト
    ↓
Phase 2: ダイジェスト生成（並列ワーカー）
    ↓
Phase 3: ダイジェストマージ + 分類（1ワーカー）
    ↓
Phase 4: 翻訳 + インデックス翻訳（並列ワーカー）
    ↓
Phase 5: 品質確認（並列ワーカー）
    ↓
Phase 6: 結果報告
```

## 手順

### Phase 1: 準備スクリプトを実行

```bash
${SKILL_DIR}/scripts/prepare-translation.sh
```

出力から以下を取得:
- `BATCH_COUNT`: バッチ数（ダイジェストと翻訳で共通）
- `DOCS_DIR`: ドキュメントディレクトリ
- `TMP_DIR`: 一時ディレクトリ

`BATCH_COUNT=0` なら「翻訳が必要なファイルはありません」と報告して終了。

バッチファイル形式（`{TMP_DIR}/batch-{N}.txt`）:
```
group_key1:config/font-family
group_key2:config/adjust-cell-height
group_key2:config/adjust-cell-width
```

### Phase 2: ダイジェスト生成（並列ワーカー）

**目的**: 各 .en.txt から platform と description を抽出

#### 2.1 ダイジェストワーカーを並列起動

最大 MAX_WORKERS 個のワーカーをバックグラウンドで起動:

```
Task ツールを使用:
- subagent_type: general-purpose
- model: haiku（軽量タスク）
- run_in_background: true
- prompt:
```

プロンプトテンプレート:
```
${SKILL_DIR}/instructions/digest-worker.md を読んで実行。
docs_dir={DOCS_DIR}
batch_file={TMP_DIR}/batch-{N}.txt
output_file={TMP_DIR}/digests-{N}.json
result_file={TMP_DIR}/digest-result-{N}.txt
```

#### 2.2 完了待機と結果確認

1. 全ワーカーの `<agent-notification>` 完了通知を待つ（自動で返される）
2. 全ワーカー完了後、結果ファイルを Read ツールで確認（各ファイルは1行: `OK: {件数}件`）

**禁止**: TaskOutput の使用、ポーリング

### Phase 3: ダイジェストマージ + 分類

#### 3.1 ダイジェストをマージ

**シェルスクリプトでマージ**（オーケストレーターはファイル内容を読まない）:

```bash
${SKILL_DIR}/scripts/merge-digests.sh {TMP_DIR}
```

出力: `MERGED: {件数} entries -> {TMP_DIR}/digests.json`

**重要**: オーケストレーターは `digests.json` の内容を読んではいけない。パスの受け渡しのみ。

#### 3.2 分類ワーカーを起動

**1つ** のワーカーをバックグラウンドで起動:

```
Task ツールを使用:
- subagent_type: general-purpose
- model: opus（分類は複雑なため、最高性能モデルを使用）
- run_in_background: true
- prompt:
```

プロンプト:
```
${SKILL_DIR}/instructions/classifier.md を読んで実行。
docs_dir={DOCS_DIR}
digests_file={TMP_DIR}/digests.json
result_file={TMP_DIR}/classify-result.txt
```

#### 3.3 完了待機と結果確認

1. ワーカーの `<agent-notification>` 完了通知を待つ（自動で返される）
2. 完了後、結果ファイルを Read ツールで確認

**禁止**: TaskOutput の使用、ポーリング

### Phase 4: 翻訳 + インデックス翻訳（並列ワーカー）

翻訳ワーカーとインデックス翻訳ワーカーを **同時に** 起動する。

#### 4.1 翻訳ワーカーを並列起動

最大 MAX_WORKERS 個のワーカーをバックグラウンドで起動:

```
Task ツールを使用:
- subagent_type: general-purpose
- model: haiku
- run_in_background: true
- prompt:
```

プロンプトテンプレート:
```
${SKILL_DIR}/instructions/translator.md を読んで実行。
docs_dir={DOCS_DIR}
batch_file={TMP_DIR}/batch-{N}.txt
digests_file={TMP_DIR}/digests.json
result_file={TMP_DIR}/translate-result-{N}.txt
```

#### 4.2 インデックス翻訳ワーカーを起動（4.1 と同時）

**1つ** のワーカーをバックグラウンドで起動（翻訳ワーカーと並列）:

```
Task ツールを使用:
- subagent_type: general-purpose
- model: haiku
- run_in_background: true
- prompt:
```

プロンプト:
```
${SKILL_DIR}/instructions/index-translator.md を読んで実行。
docs_dir={DOCS_DIR}
result_file={TMP_DIR}/index-translate-result.txt
```

#### 4.3 完了待機と結果確認

1. 全ワーカー（翻訳 + インデックス翻訳）の `<agent-notification>` 完了通知を待つ
2. 全ワーカー完了後、結果ファイルを Read ツールで確認
   - 翻訳: `完了:15/15` または `失敗:2/15 ...`
   - インデックス: `完了:4/4` または `スキップ:更新なし`

**禁止**: TaskOutput の使用、ポーリング

### Phase 5: 品質確認（並列ワーカー）

翻訳完了後、ファイル完全性とリンク有効性を確認する。

#### 5.1 品質確認ワーカーを並列起動

**2つ** のワーカーをバックグラウンドで起動:

英語チェック:
```
Task ツールを使用:
- subagent_type: general-purpose
- model: haiku
- run_in_background: true
- prompt:
```

プロンプト:
```
${SKILL_DIR}/instructions/quality-checker.md を読んで実行。
docs_dir={DOCS_DIR}
check_type=en
result_file={TMP_DIR}/quality-check-en.txt
```

日本語チェック:
```
Task ツールを使用:
- subagent_type: general-purpose
- model: haiku
- run_in_background: true
- prompt:
```

プロンプト:
```
${SKILL_DIR}/instructions/quality-checker.md を読んで実行。
docs_dir={DOCS_DIR}
check_type=ja
digests_file={TMP_DIR}/digests.json
result_file={TMP_DIR}/quality-check-ja.txt
```

#### 5.2 完了待機と結果確認

1. 両ワーカーの `<agent-notification>` 完了通知を待つ
2. 完了後、結果ファイルを Read ツールで確認
   - `OK: files=...` なら問題なし
   - `ISSUES:` で始まる場合は問題あり

**禁止**: TaskOutput の使用、ポーリング

### Phase 6: 結果報告

全ワーカーの報告を集約して簡潔に報告:

```
## ダイジェスト生成
- 処理ファイル数: {件数}件

## 分類結果
- category.json: {カテゴリ数}カテゴリ
- platform.json: {項目数}項目
- en/index-*.en.md: 4件

## 翻訳結果
- 成功: {件数}件
- 失敗: {件数}件（あれば詳細）

## インデックス翻訳結果
- ja/index-*.ja.md: {件数}件（またはスキップ）

## 品質確認結果
- 英語: OK または ISSUES あり
- 日本語: OK または ISSUES あり
（問題がある場合は詳細を報告）

### 翻訳ファイル一覧
- config/xxx
- config/yyy
- actions/zzz
```

翻訳内容自体は返さない。
