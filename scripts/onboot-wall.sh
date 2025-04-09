#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/walls"
LAST_USED="$HOME/.cache/last_wall.txt"

# Make sure cache dir exists
mkdir -p "$HOME/.cache"

# Get the last wallpaper (if exists)
if [[ -f "$LAST_USED" ]]; then
    LAST=$(cat "$LAST_USED")
else
    LAST=""
fi

# Find a random wallpaper different from the last one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$LAST")" | shuf -n 1)

# If the folder only has one file, fall back to that
if [[ -z "$WALLPAPER" ]]; then
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
fi

# Save current wallpaper for next session
echo "$WALLPAPER" > "$LAST_USED"

# Generate new hyprpaper.conf
cat > "$HOME/.config/hypr/hyprpaper.conf" <<EOF
preload = $WALLPAPER
wallpaper = ,$WALLPAPER
EOF

# Start hyprpaper
hyprpaper &

