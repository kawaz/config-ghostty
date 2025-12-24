#!/bin/bash
# digests-*.json を1つの digests.json にマージ
# 使い方: merge-digests.sh <TMP_DIR>

set -e

TMP_DIR="${1:-.}"

# 入力ファイルの存在確認
shopt -s nullglob
FILES=("$TMP_DIR"/digests-*.json)
shopt -u nullglob

if [ ${#FILES[@]} -eq 0 ]; then
    echo "ERROR: No digests-*.json files found in $TMP_DIR" >&2
    exit 1
fi

OUTPUT="$TMP_DIR/digests.json"

# jq で全ファイルをマージ
jq -s 'add' "${FILES[@]}" > "$OUTPUT"

# 結果報告
COUNT=$(jq 'keys | length' "$OUTPUT")
echo "MERGED: $COUNT entries -> $OUTPUT"
