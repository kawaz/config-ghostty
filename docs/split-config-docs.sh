#!/bin/bash
#
# split-config-docs.sh - Split ghostty config docs into individual files
#
# Usage: ./split-config-docs.sh <outdir>
#
# == Split Logic ==
# Split on empty lines.
#
# == Rename Logic ==
# Extract the first config name from each file using:
#   grep -m1 -Eo '^[a-zA-Z0-9-]+'
# Then rename the file to {config-name}.en.txt
# Files without a config name (comment-only blocks) are discarded.
#

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <outdir>" >&2
  exit 1
fi

outdir="$1"

# Create output directory
mkdir -p "$outdir"

# Get ghostty config docs
docs=$(ghostty +show-config --default --docs 2>/dev/null || true)

# Split by empty lines
file_num=0
current_block=""

while IFS= read -r line; do
  if [[ -z "$line" ]]; then
    # Empty line - save current block if not empty
    if [[ -n "$current_block" ]]; then
      printf "%s\n" "$current_block" > "$outdir/$(printf '%04d' $file_num).txt"
      ((file_num++))
      current_block=""
    fi
  else
    # Add line to current block
    if [[ -n "$current_block" ]]; then
      current_block="$current_block"$'\n'"$line"
    else
      current_block="$line"
    fi
  fi
done <<< "$docs"

# Save last block if exists
if [[ -n "$current_block" ]]; then
  printf "%s\n" "$current_block" > "$outdir/$(printf '%04d' $file_num).txt"
fi

echo "Created $((file_num + 1)) numbered files in $outdir"

# Rename files based on first config name, discard comment-only blocks
renamed=0
discarded=0
for f in "$outdir"/*.txt; do
  # Extract first config name (line starting with alphanumeric/dash)
  config_name=$(grep -m1 -Eo '^[a-zA-Z0-9-]+' "$f" 2>/dev/null || true)

  if [[ -n "$config_name" ]]; then
    new_name="$outdir/${config_name}.en.txt"
    if [[ "$f" != "$new_name" ]]; then
      mv "$f" "$new_name"
      echo "Renamed $(basename "$f") -> ${config_name}.en.txt"
      ((renamed++))
    fi
  else
    # No config name found - discard this file
    rm "$f"
    echo "Discarded $(basename "$f") (comment-only block)"
    ((discarded++))
  fi
done

echo "Done! Renamed: $renamed, Discarded: $discarded"
