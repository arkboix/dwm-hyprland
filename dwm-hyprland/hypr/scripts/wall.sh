#!/bin/bash
hyprpaper
# Path to your wallpapers directory
WALLPAPER_DIR="$HOME/wallpapers"

# Find all image files in the directory (can adjust file extensions if needed)
WALLPAPERS=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" \))

# Choose a random wallpaper
RANDOM_WALLPAPER=$(echo "$WALLPAPERS" | shuf -n 1)


# Set the wallpaper using Hyprpaper
hyprctl hyprpaper preload "${RANDOM_WALLPAPER}"
hyprctl hyprpaper wallpaper "eDP-1,${RANDOM_WALLPAPER}"

notify-send "A random wallpaper from ~/wallpapers has been set."
