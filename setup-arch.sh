#!/bin/bash

echo "MAKE SURE YOU ARE IN THE GITHUB REPOSITORY'S FOLDER"
chmod +x backup.sh
./backup.sh
sudo pacman -S --noconfirm gum go ttf-roboto-mono rofi-wayland swaync waybar kitty python-pywal zsh
if gum choose "Start Installation" "No" | grep -q "Start Installation"; then
  echo "Starting installation..."
  # Place your installation code here
  chsh -s zsh
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
  chmod +x $HOME/.config/hypr/scripts/*.sh
  chmod +x $HOME/.config/waybar/*.sh
  echo COMPLETE!, REBOOT YOUR SYSTEM TO APPLY CHANGES CORRECTLY!
  echo MAKE SURE TO EDIT ~/.config/waybar/style.css AND CHANGE /HOME/USERNAME TO YOUR ACTUAL USERNAME
else
  echo "Installation aborted."
  exit 0
fi
