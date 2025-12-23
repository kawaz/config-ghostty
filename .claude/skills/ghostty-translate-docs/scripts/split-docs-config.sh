#!/bin/bash
#
# split-docs-config.sh - Split ghostty config docs into individual files
#
# Usage: ./split-docs-config.sh <outdir>
#
# == Split Logic ==
# 1. Comment lines belong to the next config(s)
# 2. Config lines after comments form a block
# 3. When a new comment appears after config line(s), start new block
# 4. Each config name gets its own file with the whole block content
#

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <outdir>" >&2
  exit 1
fi

outdir="$1"
mkdir -p "$outdir"

# Get ghostty config docs
docs=$(ghostty +show-config --default --docs 2>/dev/null || true)

pending_comments=""  # Comments waiting for config
current_block=""     # Current block (comments + configs)
has_config=false     # Whether current block has any config lines
file_count=0

save_block() {
  local content="$1"
  [[ -z "$content" ]] && return

  # Extract all config names from this block
  local config_names
  config_names=$(echo "$content" | grep -oE '^[a-zA-Z0-9-]+[[:space:]]*=' | sed 's/[[:space:]]*=$//' || true)

  if [[ -z "$config_names" ]]; then
    return
  fi

  # Create a file for each config name (same content)
  for name in $config_names; do
    echo "$content" > "$outdir/${name}.en.txt"
    ((file_count++))
  done
}

while IFS= read -r line; do
  # Skip empty lines
  [[ -z "$line" ]] && continue

  if [[ "$line" =~ ^# ]]; then
    # Comment line
    if $has_config; then
      # We had config(s), this comment starts a new block
      save_block "$current_block"
      current_block=""
      has_config=false
    fi
    # Accumulate comment
    if [[ -n "$current_block" ]]; then
      current_block="$current_block"$'\n'"$line"
    else
      current_block="$line"
    fi
  elif [[ "$line" =~ ^[a-zA-Z0-9-]+[[:space:]]*= ]]; then
    # Config line - add to current block
    if [[ -n "$current_block" ]]; then
      current_block="$current_block"$'\n'"$line"
    else
      current_block="$line"
    fi
    has_config=true
  fi
done <<< "$docs"

# Save last block
save_block "$current_block"

echo "Created $file_count config files in $outdir"
