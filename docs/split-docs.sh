#!/bin/bash
# split-docs.sh - Run all split scripts
#
# This script can be run from any directory.

set -euo pipefail
cd "$(dirname "$0")"

./split-docs-config.sh en/config
./split-docs-actions.sh en/actions
