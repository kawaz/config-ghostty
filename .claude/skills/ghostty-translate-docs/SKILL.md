---
name: ghostty-translate-docs
description: ghosttyドキュメントを日本語に翻訳
---

## 使い方

オーケストレーターをバックグラウンドで起動し、完了したら結果を報告する。

```bash
cat <<EOF | claude -p --model sonnet --dangerously-skip-permissions
.claude/skills/ghostty-translate-docs/instructions/orchestrator.md を読んで、
ghostty ドキュメントの翻訳を実行してください。
docs_dir: {引数で指定、または未指定ならデフォルト}
EOF
```

## 結果

- 成功/失敗件数とカテゴリ別内訳の要約
- 翻訳したファイル一覧: `$TMP_DIR/translation-result.txt`
- ユーザーが詳細を求めたら結果リストを読んで個別に説明可能
