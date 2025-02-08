#!/bin/bash


# Fetch the path of current wallpaper
WALL=$(grep -oP '^wallpaper = eDP-1,\s*\K.+' ~/.config/hypr/hyprpaper.conf)

# Set colorscheme with wal
wal -i "$WALL"

# Reload waybar
pkill waybar
waybar
