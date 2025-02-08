#!/bin/bash

# Make sure that Hyprpaper is running
hyprpaper

# Wallpaper directory

WALLPAPER=/home/arkboi/wallpapers/brb.png

# Set the Be Right Back wallpaper:

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"