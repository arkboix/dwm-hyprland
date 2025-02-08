#!/bin/bash

echo "MAKE SURE YOU ARE IN THE GITHUB REPOSITORY'S FOLDER"
chmod +x backup.sh
./backup.sh
sudo pacman -S gum
if gum choose "Start Installation" "No" | grep -q "Start Installation"; then
  echo "Starting installation..."
  # Place your installation code here
  rm -rf $HOME/.config/hypr/*
  cp -r dwm-hyprland/hypr/* $HOME/.config/hypr/
  rm -rf $HOME/.config/waybar/*
  cp -r dwm-hyprland/waybar/* $HOME/.config/waybar/
  rm -rf $HOME/.config/rofi/*
  cp -r dwm-hyprland/rofi/* $HOME/.config/rofi/
  rm -rf $HOME/.config/swaync/*
  cp -r dwm-hyprland/swaync/* $HOME/.config/swaync
  rm -rf $HOME/.config/kitty/*
  cp -r dwm-hyprland/kitty/* $HOME/.config/kitty/
  echo COMPLETE!, REBOOT YOUR SYSTEM TO APPLY CHANGES CORRECTLY!
else
  echo "Installation aborted."
  exit 0
fi
