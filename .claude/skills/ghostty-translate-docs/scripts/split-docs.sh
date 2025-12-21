#!/bin/bash
# split-docs.sh - Generate English docs from ghostty
#
# Usage: ./split-docs.sh <output_dir>
#
# Generates:
#   <output_dir>/config/*.en.txt
#   <output_dir>/actions/*.en.txt

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
OUTPUT_DIR="${1:?Usage: $0 <output_dir>}"

mkdir -p "$OUTPUT_DIR/config" "$OUTPUT_DIR/actions"

"$SCRIPT_DIR/split-docs-config.sh" "$OUTPUT_DIR/config"
"$SCRIPT_DIR/split-docs-actions.sh" "$OUTPUT_DIR/actions"
