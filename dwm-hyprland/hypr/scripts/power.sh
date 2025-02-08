#!/bin/bash

theme_path="$HOME/wofi-themes/themes/starter-greenish-blue.css"

selection=$(echo -e "Power Off\nReboot\nLock\nHibernate" | wofi --prompt "Power Options ~uwu~" --dmenu --style "$theme_path")

case "$selection" in
    "Power Off")
        shutdown now
        ;;
    "Reboot")
        reboot
        ;;
    "Lock")
        hyprlock
        ;;
    "Hibernate")
    systemctl hibernate
    ;;
esac
