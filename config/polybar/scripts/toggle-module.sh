#!/bin/bash

FLAG_FILE="/tmp/polybar_module_toggle"

# Если файла нет, создаем его со значением A
if [ ! -f "$FLAG_FILE" ]; then
    echo "A" > "$FLAG_FILE"
fi

# Если передан аргумент "toggle", меняем значение
if [ "$1" == "toggle" ]; then
    if [ "$(cat "$FLAG_FILE")" == "A" ]; then
        echo "B" > "$FLAG_FILE"
    else
        echo "A" > "$FLAG_FILE"
    fi
    # Заставляем Polybar немедленно обновить модуль
    polybar-msg action "#toggle-mod.module_hook" 0 2>/dev/null || true
    exit 0
fi

# Вывод контента в зависимости от состояния
if [ "$(cat "$FLAG_FILE")" == "A" ]; then
    echo "Первый модуль (А) "
else
    echo "Второй модуль (Б) 阮"
fi

