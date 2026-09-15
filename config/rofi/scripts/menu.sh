#!/usr/bin/env bash

options="i3\nMonitors\nWallpaper\nKeyboard\nKeys\nAutoStart\nBash\nPicom\nKitty\nVim\nRofi\nSettingMenu"
chosen=$(echo -e "$options" | rofi -dmenu -i -p "CONFIG" -theme-str 'window {width: 450px; height: 300px;} listview {lines: 4;}')

case "$chosen" in
    *i3)
        kitty -e vim ~/.config/i3/config
        ;;
    *Monitors)
        kitty -e vim  ~/.config/i3/config.d/monitors
        ;;
    *Wallpaper)
        kitty -e vim  ~/.config/i3/config.d/wallpaper
        ;;
    *Keyboard)
        kitty -e vim ~/.config/i3/config.d/keyboard
        ;;
    *Keys)
        kitty -e vim ~/.config/i3/config.d/keys
        ;;
    *AutoStart)
        kitty -e vim ~/.config/i3/config.d/autostart
        ;;
    *Bash)
        kitty -e vim ~/.bashrc
        ;;
    *Picom)
        kitty -e vim ~/.config/picom/picom.conf
        ;;
    *Kitty)
        kitty -e vim ~/.config/kitty/kitty.conf
        ;;
    *Vim)
        kitty -e vim ~/.vimrc
        ;;
    *Rofi)
        kitty -e vim ~/.config/rofi/config.rasi
        ;;
    *SettingMenu)
        kitty -e vim ~/.config/rofi/scripts/menu.sh
        ;;
esac

