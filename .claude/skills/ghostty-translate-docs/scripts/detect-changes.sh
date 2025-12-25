#!/bin/bash
# detect-changes.sh - Detect files needing translation
#
# Usage: ./detect-changes.sh <new_en_dir> <en_dir> <ja_dir> [--update-en]
#
# Compares new_en_dir with en_dir, checks ja_dir for existing translations.
#
# Arguments:
#   new_en_dir   Directory containing new English docs (*.en.txt)
#   en_dir       Directory containing current English docs
#   ja_dir       Directory containing Japanese translations
#   --update-en  If specified, copy new docs to en_dir and handle deprecated files
#
# Output (stdout):
#   List of files needing translation (category/name format)
#
# Deprecated handling (with --update-en):
#   Files in en/ but not in new-en/ are renamed to DEPRECATED-*.en.txt
#   Corresponding ja/ files are also renamed to DEPRECATED-*.ja.txt
#
# Exit codes:
#   0: Success
#   1: Error

set -uo pipefail

if [[ $# -lt 3 ]]; then
    echo "Usage: $0 <new_en_dir> <en_dir> <ja_dir> [--update-en]" >&2
    exit 1
fi

NEW_EN_DIR="$1"
EN_DIR="$2"
JA_DIR="$3"
UPDATE_EN=false

if [[ "${4:-}" == "--update-en" ]]; then
    UPDATE_EN=true
fi

# Validate directories
for dir in "$NEW_EN_DIR" "$EN_DIR" "$JA_DIR"; do
    if [[ ! -d "$dir" ]]; then
        echo "Error: Directory '$dir' does not exist" >&2
        exit 1
    fi
done

# Function to compute hash of a file
compute_hash() {
    shasum -a 256 "$1" 2>/dev/null | cut -d' ' -f1
}

# Function to detect changes in a category
detect_category() {
    local category="$1"  # config or actions
    local new_dir="$NEW_EN_DIR/$category"
    local en_dir="$EN_DIR/$category"
    local ja_dir="$JA_DIR/$category"

    [[ -d "$new_dir" ]] || return 0

    for f in "$new_dir"/*.en.txt; do
        [[ -f "$f" ]] || continue
        local filename=$(basename "$f")
        local name="${filename%.en.txt}"
        local en_file="$en_dir/$filename"
        local ja_file="$ja_dir/${name}.ja.txt"

        # Calculate hashes
        local new_hash=$(compute_hash "$f")
        local old_hash=""
        if [[ -f "$en_file" ]]; then
            old_hash=$(compute_hash "$en_file")
        fi

        # Additional paths for .md files
        local en_md_file="$en_dir/${name}.en.md"
        local ja_md_file="$ja_dir/${name}.ja.md"

        # Determine if translation needed
        # Translation is required if ANY of these conditions is true:
        # 1. .ja.txt doesn't exist
        # 2. Content changed (.en.txt hash differs)
        # 3. .en.md doesn't exist
        # 4. .ja.md doesn't exist
        local needs_translation=false
        if [[ ! -f "$ja_file" ]]; then
            # No Japanese translation exists
            needs_translation=true
        elif [[ "$new_hash" != "$old_hash" ]]; then
            # Content changed
            needs_translation=true
        elif [[ ! -f "$en_md_file" ]]; then
            # English markdown doesn't exist
            needs_translation=true
        elif [[ ! -f "$ja_md_file" ]]; then
            # Japanese markdown doesn't exist
            needs_translation=true
        fi

        if $needs_translation; then
            echo "$category/$name"
        fi

        # Update en/ with new content if requested
        if $UPDATE_EN; then
            mkdir -p "$en_dir"
            cp "$f" "$en_file"
        fi
    done
}

# Function to detect and rename deprecated files in a category
detect_deprecated() {
    local category="$1"  # config or actions
    local new_dir="$NEW_EN_DIR/$category"
    local en_dir="$EN_DIR/$category"
    local ja_dir="$JA_DIR/$category"

    [[ -d "$en_dir" ]] || return 0

    for f in "$en_dir"/*.en.txt; do
        [[ -f "$f" ]] || continue
        local filename=$(basename "$f")

        # Skip already deprecated files
        [[ "$filename" == DEPRECATED-* ]] && continue

        local name="${filename%.en.txt}"
        local new_file="$new_dir/$filename"

        # If not in new-en/, it's deprecated
        if [[ ! -f "$new_file" ]]; then
            local deprecated_en="$en_dir/DEPRECATED-$filename"
            local ja_file="$ja_dir/${name}.ja.txt"
            local deprecated_ja="$ja_dir/DEPRECATED-${name}.ja.txt"

            echo "DEPRECATED: $category/$name" >&2
            mv "$f" "$deprecated_en"

            if [[ -f "$ja_file" ]]; then
                mv "$ja_file" "$deprecated_ja"
            fi
        fi
    done
}

# Detect changes for each category
detect_category "config"
detect_category "actions"

# Handle deprecated files (only with --update-en)
if $UPDATE_EN; then
    detect_deprecated "config"
    detect_deprecated "actions"
fi
