#!/bin/bash

REPO_URL="https://github.com/sad-unixoid/dotfiles.git"
BRANCH="main"
DIR="$HOME/dotfiles"
CLONE_DIR="$HOME/.config"
PACKAGE=("i3" "xorg-server" "xorg-xrandr" "xorg-xev" "playerctl" "pavucontrol" "picom" "kitty" "feh") 
PACKAGE_MANAGERS=("apt" "yum" "dnf" "pacman")

for manager in "${PACKAGE_MANAGERS[@]}"; do
    if command -v "$manager" > /dev/null 2>&1; then
        echo "- $manager"
        if [ "$manager" = "pacman" ]; then
            sudo pacman -S "${PACKAGE[@]}" 
            break
        elif [ "$manager" = "apt" ]; then
            sudo apt install "${PACKAGE[@]}"
            break
        elif [ "$manager" = "dnf" ]; then
            sudo dnf install "${PACKAGE[@]}" 
            break
        elif [ "$manager" = "yum" ]; then
            sudo yum install "${PACKAGE[@]}" 
            break
        fi
    fi
done

git clone $REPO_URL

# backup 

mkdir "BACKUP_FILES"
cp -r ~/.config/i3/* ~/.config/kitty/* ~/.config/picom/* ~/.config/polybar/* "BACKUP_FILES"
