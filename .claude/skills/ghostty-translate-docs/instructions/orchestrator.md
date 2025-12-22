# Ghostty ドキュメント翻訳オーケストレーター

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

### 2. Task ツールで翻訳ワーカーを起動

**重要: Bash スクリプトではなく、Task ツールでサブエージェントを起動すること。**

BATCH_COUNT 個の Task を **1つのメッセージ内で全て同時に** 起動する。

各 Task の設定:
- subagent_type: `general-purpose`
- model: `haiku`
- prompt: 以下のテンプレートで N を 1〜BATCH_COUNT に置換

```
.claude/skills/ghostty-translate-docs/instructions/translator.md を読んで、
docs_dir={取得した DOCS_DIR の値} として
{取得した TMP_DIR の値}/translate-batch-{N}.txt のファイルを翻訳してください。
```

例: BATCH_COUNT=3 の場合、3つの Task を同時に起動:
- Task 1: ...translate-batch-1.txt...
- Task 2: ...translate-batch-2.txt...
- Task 3: ...translate-batch-3.txt...

全ての Task の完了を待つ。

### 3. 結果報告

各ワーカーの報告を集約して簡潔に報告:
- 成功/失敗件数の合計
- カテゴリ別内訳（config: N件、actions: N件）

翻訳内容自体は返さない。
