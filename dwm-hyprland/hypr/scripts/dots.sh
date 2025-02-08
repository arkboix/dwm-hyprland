#!/bin/bash
echo [LOG] Script started.
cd $HOME
echo [LOG] Finding any exsiting dots and deleting them
find dots
rm -rf dots
echo [LOG] creating new dots
mkdir dots
echo [LOG] copying .config/hypr
cp -r .config/hypr dots
echo [LOG] copying .config/waybar
cp -r .config/waybar dots
echo [LOG] copying .vimrc
mkdir dots/vim
cp .vimrc dots/vim
echo [LOG] copying .config/swanc
cp -r .config/swaync dots
echo [LOG] Finished
notify-send "Dotfiles succesfully copied over to /home/arkboi/dots"
