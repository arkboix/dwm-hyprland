#!/bin/bash

echo STARTING THE BACKUP
cd $HOME
mkdir dwm-hyprland-backup
cp -r .config/hypr .config/waybar .config/swaync .config/rofi .config/kitty dwm-hyprland-backup
echo
echo Backup created in $HOME/dwm-hyprland-backup
