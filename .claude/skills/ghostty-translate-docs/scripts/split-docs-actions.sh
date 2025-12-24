#!/bin/bash
#
# split-actions-docs.sh - Split ghostty action docs into individual files
#
# Usage: ./split-actions-docs.sh <outdir>
#
# == Split Logic ==
# Split on empty lines.
#
# == Rename Logic ==
# Extract the action name from the first line using:
#   head -1 | sed 's/:$//'
# Then rename the file to {action-name}.en.txt
# Files without an action name are discarded.
#

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <outdir>" >&2
  exit 1
fi

outdir="$1"

# Create output directory
mkdir -p "$outdir"

# Get ghostty action docs
docs=$(ghostty +list-actions --docs 2>/dev/null || true)

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

# Rename files based on action name, discard invalid blocks
renamed=0
discarded=0
for f in "$outdir"/*.txt; do
  # Extract action name from first line (remove trailing colon)
  first_line=$(head -1 "$f")
  if [[ "$first_line" =~ ^([a-z_]+):$ ]]; then
    action_name="${BASH_REMATCH[1]}"
    new_name="$outdir/${action_name}.en.txt"
    if [[ "$f" != "$new_name" ]]; then
      mv "$f" "$new_name"
      # echo "Renamed $(basename "$f") -> ${action_name}.en.txt"
      ((renamed++))
    fi
  else
    # No valid action name found - discard this file
    rm "$f"
    # echo "Discarded $(basename "$f") (invalid block: $first_line)"
    ((discarded++))
  fi
done

echo "Done! Renamed: $renamed, Discarded: $discarded"
