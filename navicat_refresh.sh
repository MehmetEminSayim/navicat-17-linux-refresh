#!/bin/bash

echo "=== Navicat Cleanup Script ==="

if command -v dconf &> /dev/null; then
    dconf reset -f /com/premiumsoft/navicat-premium/
    echo "dconf trial reset successfully."
else
    echo "Warning: dconf is not installed. The script may not work properly; you can install it with (sudo apt install dconf-cli)."
fi

PREF_FILE="$HOME/.config/navicat/Premium/preferences.json"

if [ -f "$PREF_FILE" ]; then
    sed -i -E 's/,?"([A-F0-9]+)":\{([^\}]+)},?//g' "$PREF_FILE"
    echo "preferences.json trial data cleaned."
else
    echo "Not found: $PREF_FILE"
fi

CACHE_DIR="$HOME/.cache/navicat"
if [ -d "$CACHE_DIR" ]; then
    rm -rf "$CACHE_DIR"
    echo "Deleted: $CACHE_DIR"
fi

echo "=== Cleanup finished ==="
