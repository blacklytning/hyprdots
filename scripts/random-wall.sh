#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/walls"
CACHE_DIR="$HOME/.cache"
LAST_USED="$CACHE_DIR/last_wall.txt"
CURRENT_WALL="$CACHE_DIR/current_wall"
MONITOR="eDP-1"

mkdir -p "$CACHE_DIR"

# Read last wallpaper
LAST=""
[[ -f "$LAST_USED" ]] && LAST="$(cat "$LAST_USED")"

# Pick random wallpaper (no immediate repeat)
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \
  \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' \) \
  ! -path "$LAST" | shuf -n 1)

[[ -z "$WALLPAPER" ]] && WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

echo "$WALLPAPER" > "$LAST_USED"

ln -sf "$WALLPAPER" "$CURRENT_WALL"

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$CURRENT_WALL"
hyprctl hyprpaper wallpaper "$MONITOR,$CURRENT_WALL"
