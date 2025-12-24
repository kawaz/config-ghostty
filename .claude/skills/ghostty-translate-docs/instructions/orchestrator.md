# Ghostty ドキュメント翻訳オーケストレーター

## 前提条件

呼び出し元から `SKILL_DIR` を受け取っていること。
すべてのスクリプトと指示書は `${SKILL_DIR}/...` で参照する。

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
```

#### 2.2 完了通知を待機

全ワーカーをバックグラウンドで起動し、完了通知を待つ。**ポーリング不要**。

### Phase 3: ダイジェストマージ + 分類

#### 3.1 ダイジェストをマージ

**シェルスクリプトでマージ**（オーケストレーターはファイル内容を読まない）:

```bash
${SKILL_DIR}/scripts/merge-digests.sh {TMP_DIR}
```

出力: `MERGED: {件数} entries -> {TMP_DIR}/digests.json`

**重要**: オーケストレーターは `digests.json` の内容を読んではいけない。パスの受け渡しのみ。

#### 3.2 分類ワーカーを起動

**1つ** のワーカーを起動（フォアグラウンド）:

```
Task ツールを使用:
- subagent_type: general-purpose
- model: opus（分類は複雑なため、最高性能モデルを使用）
- run_in_background: false
- prompt:
```

プロンプト:
```
${SKILL_DIR}/instructions/classifier.md を読んで実行。
docs_dir={DOCS_DIR}
digests_file={TMP_DIR}/digests.json
```

完了を待つ。

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
```

#### 4.2 完了通知を待機

Phase 2 と同様に、通知を待機して結果を収集。ポーリングは不要。

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
