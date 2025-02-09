#!/bin/bash

# Make sure that Hyprpaper is running
hyprpaper

# Wallpaper directory

WALLPAPER=~/wallpapers/painting7.jpg

# Set the Be Right Back wallpaper:

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"
