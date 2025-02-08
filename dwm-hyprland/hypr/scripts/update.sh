#!/bin/bash

# Function to check if we have sudo privileges
check_sudo() {
    if ! sudo -n true 2>/dev/null; then
        # Try using zenity for GUI password prompt
        if command -v zenity >/dev/null 2>&1; then
            password=$(zenity --password --title="Authentication Required")
            if [ $? = 0 ]; then
                echo "$password" | sudo -S "$@"
            fi
        # Fallback to pkexec if zenity is not available
        elif command -v pkexec >/dev/null 2>&1; then
            pkexec "$@"
        else
            notify-send "Error" "Neither zenity nor pkexec is installed. Please install one of them."
            exit 1
        fi
    else
        # If we already have sudo privileges, just run the command
        sudo "$@"
    fi
}

# Your original update script logic here
update_system() {
    # Replace this with your actual update commands
    check_sudo pacman -Syu --noconfirm && flatpak update -y && yay -Syu --noconfirm # For Arch-based systems
    # OR
    # check_sudo apt update && check_sudo apt upgrade  # For Debian-based systems
}

# Execute the update
update_system
notify-send "System updated. (Flatpak, Pacman, and AUR)"
