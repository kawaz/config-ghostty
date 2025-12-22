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

結果は「成功: N件、失敗: N件」の形式で返ってくる。
