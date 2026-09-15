#!/usr/bin/env bash

# Названия ваших мониторов из вывода команды `xrandr`
INTERNAL="eDP-1"
EXTERNAL="HDMI-1"

# Варианты для меню Rofi
options="💻 Только встроенный\n🖥️ Только внешний\n➕ Расширить вправо\n🔄 Дублировать"

# Показ меню и получение выбора пользователя
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Мониторы:" -theme-str 'window {width: 300px;} listview {lines: 4;}')

case "$chosen" in
    *встроенный)
        xrandr --output "$INTERNAL" --auto --primary --output "$EXTERNAL" --off
        ;;
    *внешний)
        xrandr --output "$EXTERNAL" --auto --primary --output "$INTERNAL" --off
        ;;
    *расширить)
        xrandr --output "$INTERNAL" --auto --primary --output "$EXTERNAL" --auto --right-of "$INTERNAL"
        ;;
    *дублировать)
        xrandr --output "$INTERNAL" --auto --output "$EXTERNAL" --auto --same-as "$INTERNAL"
        ;;
esac

# Перезапуск i3wm, чтобы обои и бары адаптировались под новое разрешение
i3-msg restart

