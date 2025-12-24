#!/bin/bash
# prepare-translation.sh - Prepare batch files for digest and translation
#
# Usage: ./prepare-translation.sh [docs_dir] [batch_size]
#
# Arguments:
#   docs_dir    - Target docs directory (default: $GHOSTTY_CONFIG_DIR/docs)
#   batch_size  - Groups per batch (default: 15)
#
# This script:
# 1. Runs split-docs.sh to extract English docs to new-en/
# 2. Runs detect-changes.sh to find files needing translation
# 3. Creates unified batch files (used by both digest and translate workers)
#
# Output:
#   - $TMP_DIR/batch-{n}.txt (unified batch files with group keys)
#
# Exit codes:
#   0: Success
#   1: Error

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Get default docs_dir from Ghostty config directory
get_default_docs_dir() {
    local config_dir
    config_dir="$("$SCRIPT_DIR/get-ghostty-config-dir.sh")"
    echo "$config_dir/docs"
}

DOCS_DIR="${1:-$(get_default_docs_dir)}"
BATCH_SIZE="${2:-30}"  # グループ数/バッチ

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
mkdir -p "$TMP_DIR"

# Clean up old batch files
rm -f "$TMP_DIR"/batch-*.txt
rm -f "$TMP_DIR"/digest-batch-*.txt
rm -f "$TMP_DIR"/translate-batch-*.txt

# Step 1: Generate new English docs
echo "=== Generating English docs ===" >&2
"$SCRIPT_DIR/split-docs.sh" "$NEW_EN_DIR" >&2

# Step 2: Detect changes and get files needing translation
echo "=== Detecting changes ===" >&2
NEED_TRANSLATE=$("$SCRIPT_DIR/detect-changes.sh" "$NEW_EN_DIR" "$EN_DIR" "$JA_DIR" --update-en)

# Cleanup new-en/
rm -rf "$NEW_EN_DIR"

# Check if any files need translation
if [[ -z "$NEED_TRANSLATE" ]]; then
    echo "" >&2
    echo "=== 結果 ===" >&2
    echo "翻訳が必要なファイルはありません。全て最新です。" >&2
    echo ""
    echo "BATCH_COUNT=0"
    exit 0
fi

TOTAL_FILES=$(echo "$NEED_TRANSLATE" | wc -l | tr -d ' ')

# Step 3: Group files by config names (files sharing same comment block)
echo "=== Grouping related configs ===" >&2

GROUP_MAP_FILE="$TMP_DIR/group-map.txt"
> "$GROUP_MAP_FILE"

while IFS= read -r rel_path; do
    [[ -z "$rel_path" ]] && continue

    # Get full path to .en.txt
    full_path="$EN_DIR/${rel_path}.en.txt"

    # Extract config names and create sorted group key (hash)
    group_key=$(grep -oE '^[a-zA-Z0-9_-]+[[:space:]]*=' "$full_path" 2>/dev/null \
        | sed 's/[[:space:]]*=$//' \
        | sort \
        | tr '\n' ',' \
        | sed 's/,$//' || echo "$rel_path")
    group_key=$(shasum -a 256 <<<"$group_key" | cut -b 1-16)

    # Store: group_key<TAB>rel_path
    printf '%s\t%s\n' "$group_key" "$rel_path" >> "$GROUP_MAP_FILE"
done <<< "$NEED_TRANSLATE"

# Count unique groups
UNIQUE_GROUPS=$(cut -f1 "$GROUP_MAP_FILE" | sort -u | wc -l | tr -d ' ')
echo "グループ数: $UNIQUE_GROUPS (ファイル数: $TOTAL_FILES)" >&2

# Sort by group key to keep groups together
sort -t$'\t' -k1,1 "$GROUP_MAP_FILE" > "$TMP_DIR/group-map-sorted.txt"

# Step 4: Create unified batch files
echo "=== Creating batch files ===" >&2

BATCH_NUM=1
GROUP_COUNT=0
LAST_GROUP=""
BATCH_FILE="$TMP_DIR/batch-$BATCH_NUM.txt"

while IFS=$'\t' read -r group_key rel_path; do
    [[ -z "$rel_path" ]] && continue

    # Check if this is a new group
    if [[ "$group_key" != "$LAST_GROUP" ]]; then
        if [[ -n "$LAST_GROUP" ]]; then
            ((GROUP_COUNT++))
        fi

        # Start new batch after BATCH_SIZE groups
        if [[ $GROUP_COUNT -ge $BATCH_SIZE ]]; then
            ((BATCH_NUM++))
            GROUP_COUNT=0
            BATCH_FILE="$TMP_DIR/batch-$BATCH_NUM.txt"
        fi

        LAST_GROUP="$group_key"
    fi

    # Write file with group key prefix
    echo "${group_key}:${rel_path}" >> "$BATCH_FILE"
done < "$TMP_DIR/group-map-sorted.txt"

# Clean up temp files
rm -f "$GROUP_MAP_FILE" "$TMP_DIR/group-map-sorted.txt"

# Ensure at least one batch exists
if [[ ! -f "$TMP_DIR/batch-1.txt" ]]; then
    BATCH_NUM=0
fi

# Output summary
echo "" >&2
echo "=== 結果 ===" >&2
echo "翻訳が必要なファイル: $TOTAL_FILES 件" >&2
echo "グループ数: $UNIQUE_GROUPS" >&2
echo "バッチ数: $BATCH_NUM" >&2
echo "" >&2
echo "バッチファイル:" >&2
for i in $(seq 1 $BATCH_NUM); do
    BATCH="$TMP_DIR/batch-$i.txt"
    FILE_COUNT=$(wc -l < "$BATCH" | tr -d ' ')
    GROUP_COUNT=$(cut -d: -f1 "$BATCH" | sort -u | wc -l | tr -d ' ')
    echo "  - batch-$i.txt ($FILE_COUNT 件, $GROUP_COUNT グループ)" >&2
done

echo ""
echo "BATCH_COUNT=$BATCH_NUM"
echo "DOCS_DIR=$DOCS_DIR"
echo "TMP_DIR=$TMP_DIR"
