#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"

WALLPAPERS=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" \))

RANDOM_WALLPAPER=$(echo "$WALLPAPERS" | shuf -n 1)

# Hyprpaper Output

echo $RANDOM_WALLPAPER