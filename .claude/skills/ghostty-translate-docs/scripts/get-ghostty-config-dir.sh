#!/bin/bash
# get-ghostty-config-dir.sh - Get Ghostty config directory
#
# Usage: ./get-ghostty-config-dir.sh
#
# Returns the Ghostty config directory path.
# Priority:
#   1. $XDG_CONFIG_HOME/ghostty (if exists)
#   2. ~/.config/ghostty (if exists)
#   3. ~/Library/Application Support/com.mitchellh.ghostty (macOS, if exists)
#   4. Default to $XDG_CONFIG_HOME/ghostty or ~/.config/ghostty
#
# Note: This prioritizes XDG path for dotfiles management use case.
# Ghostty itself prioritizes Application Support on macOS.

set -euo pipefail

# XDG path
xdg_config="${XDG_CONFIG_HOME:-$HOME/.config}/ghostty"

# macOS Application Support path
macos_config="$HOME/Library/Application Support/com.mitchellh.ghostty"

# Check in priority order
if [[ -d "$xdg_config" ]]; then
    echo "$xdg_config"
elif [[ -d "$macos_config" ]]; then
    echo "$macos_config"
else
    # Default to XDG path (will be created if needed)
    echo "$xdg_config"
fi
