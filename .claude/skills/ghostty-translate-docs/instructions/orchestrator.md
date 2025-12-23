# Ghostty ドキュメント翻訳オーケストレーター

## 禁止事項（重要）

以下は絶対にやってはいけない:

- **Bash スクリプトや Python スクリプトで翻訳処理を書くこと**
- **`claude -p` コマンドを Bash で実行すること**
- **翻訳マッピング辞書やスクリプトを作成すること**

翻訳は **Task ツールでサブエージェントを起動** して行う。自分で翻訳コードを書いてはいけない。

## 手順

### 1. 準備スクリプトを実行

```bash
.claude/skills/ghostty-translate-docs/scripts/prepare-translation.sh
```

出力から以下を取得:
- `BATCH_COUNT`: バッチ数
- `DOCS_DIR`: ドキュメントディレクトリ
- `TMP_DIR`: 一時ディレクトリ

`BATCH_COUNT=0` なら「翻訳が必要なファイルはありません」と報告して終了。

### 2. Task ツールで分類ワーカーを起動

**必須**: Task ツール（`name="Task"`）を使ってサブエージェントを起動すること。

分類ワーカーを **1つ** 起動:
- `subagent_type`: `general-purpose`
- `model`: `sonnet`（分類は複雑なため haiku ではなく sonnet を使用）
- `prompt`:

```
.claude/skills/ghostty-translate-docs/instructions/classifier.md を読んで、
docs_dir={DOCS_DIR} としてドキュメントの分類とMarkdown生成を実行してください。
```

分類ワーカーの完了を待つ。

### 3. Task ツールで翻訳ワーカーを起動

BATCH_COUNT 個の Task を **1つのメッセージ内で全て同時に** 起動する。

各 Task の設定:
- `subagent_type`: `general-purpose`
- `model`: `haiku`
- `prompt`: 以下のテンプレートで N を 1〜BATCH_COUNT に置換

```
.claude/skills/ghostty-translate-docs/instructions/translator.md を読んで、
docs_dir={DOCS_DIR} として
{TMP_DIR}/translate-batch-{N}.txt のファイルを翻訳してください。
```

例: BATCH_COUNT=3 の場合、以下の 3 つの Task ツール呼び出しを **1 つのメッセージで同時に** 行う:
- Task 1: prompt に `...translate-batch-1.txt...`
- Task 2: prompt に `...translate-batch-2.txt...`
- Task 3: prompt に `...translate-batch-3.txt...`

全ての Task の完了を待つ。

### 4. 結果報告

分類ワーカーと翻訳ワーカーの報告を集約して簡潔に報告:

```
## 分類結果
- category.json: {カテゴリ数}カテゴリ
- platform.json: {項目数}項目
- *.en.md: {ファイル数}件
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
