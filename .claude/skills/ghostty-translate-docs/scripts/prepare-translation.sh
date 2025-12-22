#!/bin/bash
# prepare-translation.sh - Prepare translation batch files
#
# Usage: ./prepare-translation.sh [docs_dir] [batch_size]
#
# Arguments:
#   docs_dir    - Target docs directory (default: $GHOSTTY_CONFIG_DIR/docs)
#   batch_size  - Files per batch (default: 50)
#
# This script:
# 1. Runs split-docs.sh to extract English docs to new-en/
# 2. Runs detect-changes.sh to compare and detect changes
# 3. Creates batch files for translation
#
# Output:
#   - Creates $docs_dir/.tmp.ghostty-translate-docs/translate-batch-{n}.txt
#   - Prints summary to stdout
#
# Exit codes:
#   0: Success (batch files created or no translation needed)
#   1: Error

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Get default docs_dir from Ghostty config directory
get_default_docs_dir() {
    local config_dir
    config_dir="$("$SCRIPT_DIR/get-ghostty-config-dir.sh")"
    echo "$config_dir/docs"
}

DOCS_DIR="${1:-$(get_default_docs_dir)}"
BATCH_SIZE="${2:-50}"

# Create docs_dir if it doesn't exist
if [[ ! -d "$DOCS_DIR" ]]; then
    echo "Creating docs directory: $DOCS_DIR" >&2
    mkdir -p "$DOCS_DIR"
fi

DOCS_DIR="$(cd "$DOCS_DIR" && pwd)"
TMP_DIR="$DOCS_DIR/.tmp.ghostty-translate-docs"
NEW_EN_DIR="$TMP_DIR/new-en"
EN_DIR="$DOCS_DIR/en"
JA_DIR="$DOCS_DIR/ja"

# Create directories
mkdir -p "$EN_DIR/config" "$EN_DIR/actions"
mkdir -p "$JA_DIR/config" "$JA_DIR/actions"
mkdir -p "$NEW_EN_DIR"

# Step 1: Generate new English docs
echo "=== Generating English docs ===" >&2
"$SCRIPT_DIR/split-docs.sh" "$NEW_EN_DIR" >&2

# Step 2: Detect changes and get files needing translation
echo "=== Detecting changes ===" >&2
NEED_TRANSLATE=$("$SCRIPT_DIR/detect-changes.sh" "$NEW_EN_DIR" "$EN_DIR" "$JA_DIR" --update-en)

# Cleanup new-en/
rm -rf "$NEW_EN_DIR"

# Clean up old batch files
rm -f "$TMP_DIR"/translate-batch-*.txt

# Check if any files need translation
if [[ -z "$NEED_TRANSLATE" ]]; then
    echo "" >&2
    echo "=== 結果 ===" >&2
    echo "翻訳が必要なファイルはありません。全て最新です。" >&2
    echo ""
    echo "BATCH_COUNT=0"
    exit 0
fi

# Count files
TOTAL_FILES=$(echo "$NEED_TRANSLATE" | wc -l | tr -d ' ')

# Split into batch files
BATCH_NUM=1
FILE_COUNT=0
BATCH_FILE="$TMP_DIR/translate-batch-$BATCH_NUM.txt"

mkdir -p "$TMP_DIR"

while IFS= read -r file; do
    [[ -z "$file" ]] && continue

    echo "$file" >> "$BATCH_FILE"
    ((FILE_COUNT++))

    if [[ $FILE_COUNT -ge $BATCH_SIZE ]]; then
        ((BATCH_NUM++))
        FILE_COUNT=0
        BATCH_FILE="$TMP_DIR/translate-batch-$BATCH_NUM.txt"
    fi
done <<< "$NEED_TRANSLATE"

# Adjust batch count (last batch might be partial)
if [[ $FILE_COUNT -eq 0 ]]; then
    ((BATCH_NUM--))
fi

# Output summary
echo "" >&2
echo "=== 結果 ===" >&2
echo "翻訳が必要なファイル: $TOTAL_FILES 件" >&2
echo "バッチファイル数: $BATCH_NUM" >&2
echo "" >&2
echo "バッチファイル:" >&2
for i in $(seq 1 $BATCH_NUM); do
    BATCH="$TMP_DIR/translate-batch-$i.txt"
    COUNT=$(wc -l < "$BATCH" | tr -d ' ')
    echo "  - translate-batch-$i.txt ($COUNT 件)" >&2
done
echo ""
echo "BATCH_COUNT=$BATCH_NUM"
echo "DOCS_DIR=$DOCS_DIR"
echo "TMP_DIR=$TMP_DIR"
