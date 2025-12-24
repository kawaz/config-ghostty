# Ghostty ドキュメント翻訳オーケストレーター

## 前提条件

呼び出し元から `SKILL_DIR` を受け取っていること。
すべてのスクリプトと指示書は `${SKILL_DIR}/...` で参照する。

## コンテキスト節約ルール（厳守）

**TaskOutput の戻り値は絶対に読まない。**

**理由**: TaskOutput にはワーカーの全出力が含まれる可能性があり、これを読むとオーケストレーターのコンテキストが大量に消費される。特に `--verbose` モードでは全ツール呼び出しログが含まれ、8ワーカー × 数万トークンでコンテキストが破綻する。

**対策**:
- ワーカーの結果は **結果ファイル** に出力させる
- オーケストレーターは結果ファイルを **Read ツール** で確認する
- TaskOutput は完了検知（ポーリングの代替）としてのみ使用し、戻り値は無視する

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
Phase 4: 翻訳（並列ワーカー）
    ↓
Phase 5: 結果報告
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

1. 全結果ファイルの存在をポーリングで確認:
```bash
while [ $(ls {TMP_DIR}/digest-result-*.txt 2>/dev/null | wc -l) -lt {BATCH_COUNT} ]; do sleep 3; done
```

2. 結果ファイルを Read ツールで確認（各ファイルは1行: `OK: {件数}件`）

**禁止**: TaskOutput の戻り値を読むこと

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

1. 結果ファイルの存在をポーリングで確認:
```bash
while [ ! -f {TMP_DIR}/classify-result.txt ]; do sleep 3; done
```

2. 結果ファイルを Read ツールで確認

**禁止**: TaskOutput の戻り値を読むこと

### Phase 4: 翻訳（並列ワーカー）

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

#### 4.2 完了待機と結果確認

1. 全結果ファイルの存在をポーリングで確認:
```bash
while [ $(ls {TMP_DIR}/translate-result-*.txt 2>/dev/null | wc -l) -lt {BATCH_COUNT} ]; do sleep 3; done
```

2. 結果ファイルを Read ツールで確認（各ファイルは1行: `完了:15/15` または `失敗:2/15 ...`）

**禁止**: TaskOutput の戻り値を読むこと

### Phase 5: 結果報告

全ワーカーの報告を集約して簡潔に報告:

```
## ダイジェスト生成
- 処理ファイル数: {件数}件

## 分類結果
- category.json: {カテゴリ数}カテゴリ
- platform.json: {項目数}項目
- index-*.en.md: 4件

## 翻訳結果
- 成功: {件数}件
- 失敗: {件数}件（あれば詳細）

### 翻訳ファイル一覧
- config/xxx
- config/yyy
- actions/zzz
```

翻訳内容自体は返さない。
