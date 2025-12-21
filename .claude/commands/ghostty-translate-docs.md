---
description: ghosttyドキュメントを分割し、日本語に翻訳します
allowed-tools: Bash, Read, Write, Task
---

`.claude/skills/ghostty-translate-docs/instructions/orchestrator.md` を読んで、以下の変数で実行してください：

- `skill_dir`: `.claude/skills/ghostty-translate-docs`
- `docs_dir`: `$ARGUMENTS` （未指定なら `docs`）

サブエージェント起動時は Task ツール (subagent_type: general-purpose, model: haiku) を使用してください。
