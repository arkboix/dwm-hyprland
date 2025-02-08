#!/bin/bash

THEMES_DIR="$HOME/wofi-themes/my-themes"

THEMES=$(find "$THEMES_DIR" -type f \( -iname "*.css" \))

RANDOM_THEME=$(echo "$THEMES" | shuf -n 1)

wofi -s "${RANDOM_THEME}" --show drun
