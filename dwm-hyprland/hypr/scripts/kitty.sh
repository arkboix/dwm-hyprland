#!/bin/bash

THEME_DIR="$HOME/kitty-themes"

KITTY_THEMES=$(find "$THEME_DIR" -type f \( -iname "*.conf" \))

RANDOM_THEME=$(echo "$KITTY_THEMES" | shuf -n 1)

kitty -c "${RANDOM_THEME}"
