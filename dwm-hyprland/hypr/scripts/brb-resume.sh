#!/bin/bash

# Make sure that Hyprpaper is running
hyprpaper

# Wallpaper directory

WALLPAPER=/home/arkboi/wallpapers/solace1.jpg

# Set the Be Right Back wallpaper:

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"