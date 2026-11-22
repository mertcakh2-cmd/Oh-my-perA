#!/data/data/com.termux/files/usr/bin/bash

REPO="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$HOME/.termux"

cp -rf "$REPO/.termux/." "$HOME/.termux/"

chmod +x "$HOME/.termux/boot/"*.sh 2>/dev/null || true

termux-reload-settings

echo "Loaded :D"
