---
description: ghosttyドキュメントを分割し、日本語に翻訳します
allowed-tools: Bash, Read
---

# Ghostty ドキュメント翻訳

## なぜ claude -p を使うのか（サブエージェントのネスト制限対応）

Claude Code の制限: サブエージェントは更にサブエージェントを起動できない。

```
メイン → Task(オーケストレーター) → Task(ワーカー)（NG！）
```

対応策: オーケストレーターを `claude -p` で起動すれば独立セッションになり、
そこからは普通に Task でワーカーを起動できる（1段のサブエージェントなのでOK）。

```
メイン → claude -p (オーケストレーター) → Task × N (ワーカー)（OK！）
```

## 変数

- `skill_dir`: `.claude/skills/ghostty-translate-docs`
- `docs_dir`: `$ARGUMENTS`（未指定ならデフォルト）

## 手順

### 1. オーケストレーターを claude -p で起動

Bash で以下を実行（バックグラウンド推奨）:

```bash
cat <<EOF | claude -p --model sonnet --dangerously-skip-permissions
$skill_dir/instructions/orchestrator.md を読んで、
ghostty ドキュメントの翻訳を実行してください。
docs_dir: $docs_dir（未指定ならデフォルト）
EOF
```

### 2. 結果報告

オーケストレーターの出力をそのままユーザーに伝える。
