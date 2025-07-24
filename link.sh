#!/usr/bin/env bash
set -euo pipefail

# TODO: add ignore list (for keyd)

SOURCE_DIR="$(pwd)"
TARGET_DIR="$HOME/.config"

# Configs to link file-by-file instead of whole dir
LINK_BY_FILE=(
	Code
	git
	zsh
)

# Create associative set for fast lookup
declare -A LINK_FILE_MODE=()
for name in "${LINK_BY_FILE[@]}"; do
  LINK_FILE_MODE["$name"]=1
done

# Iterate all directories in the source
for entry in "$SOURCE_DIR"/*/; do
  name="$(basename "$entry")"
  src="$SOURCE_DIR/$name"
  dst="$TARGET_DIR/$name"

  if [[ -n "${LINK_FILE_MODE[$name]:-}" ]]; then
    echo "Linking files in $name/ individually..."
    find "$src" -type f | while read -r file; do
      rel="${file#$src/}"
      dest="$dst/$rel"
      mkdir -p "$(dirname "$dest")"
      ln -sf "$file" "$dest"
    done
  else
    echo "Linking whole directory $name/..."
    ln -sfn "$src" "$dst"
  fi
done

