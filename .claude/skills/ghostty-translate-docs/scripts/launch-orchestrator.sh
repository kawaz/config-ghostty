#!/bin/bash
SKILL_DIR="$(cd "$(dirname "$0")/.." && pwd)"
docs_dir="${1:-デフォルトを使用する}"
LOG_FILE="/tmp/claude/claude-orchestrator-$$.log"
PROMPT_FILE="/tmp/claude/claude-orchestrator-prompt-$$.txt"

cat > "$PROMPT_FILE" <<EOF
SKILL_DIR=${SKILL_DIR}
指示書: \${SKILL_DIR}/instructions/orchestrator.md
docs_dir: ${docs_dir}
EOF

echo "ログファイル: $LOG_FILE"
echo "監視コマンド: tail -f $LOG_FILE"

# nohup でバックグラウンド実行（Bashツールのタイムアウトから独立）
nohup bash -c "cat '$PROMPT_FILE' | claude -p --model sonnet --dangerously-skip-permissions --output-format stream-json > '$LOG_FILE' 2>&1; rm -f '$PROMPT_FILE'" &

# プロセスIDを記録
PID=$!
echo "PID: $PID"
echo "$PID" > "/tmp/claude/claude-orchestrator-$$.pid"

echo ""
echo "オーケストレーター起動完了（バックグラウンドで実行中）"
echo "進捗確認: tail -f $LOG_FILE | jq -r 'select(.type==\"assistant\") | .message.content[]? | select(.type==\"text\") | .text'"
