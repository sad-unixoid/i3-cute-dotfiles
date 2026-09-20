#!/usr/bin/env bash

REPO_URL="https://github.com/sad-unixoid/dotfiles.git"
BRANCH="main"
DIR="$HOME/dotfiles"
CLONE_DIR="$HOME/.config"

set -euo pipefail

list="${1:-packages.txt}"

if [[ ! -f "$list" ]]; then
    echo "Файл не найден: $list" >&2
    exit 1
fi

mapfile -t packages < <(
    sed -e 's/#.*//' -e 's/[[:space:]]//g' "$list" | grep -v '^$'
)

if [[ ${#packages[@]} -eq 0 ]]; then
    echo "Список пуст." >&2
    exit 0
fi

echo "Ставлю ${#packages[@]} пакетов..."
sudo pacman -S --needed "${packages[@]}"

# backup 

mkdir -p ~/backup-dotfiles
cp -r ~/.config/i3/* ~/.config/kitty/* ~/.config/picom/* ~/.config/polybar/* ~/.config/rofi/* ~/backup-dotfiles

cp -r config/* ~/Documents


