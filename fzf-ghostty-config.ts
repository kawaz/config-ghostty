#!/usr/bin/env zsh
set -eu -o pipefail
cd "$(dirname "$0")"
 
./ghostty-config.ts --all | fzf --header-lines 2 --ansi "$@"
