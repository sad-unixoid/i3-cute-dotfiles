#!/usr/bin/env bash

# Завершить работу уже запущенных процессов polybar
killall -q polybar

# Ожидание полного закрытия процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск трех панелей сверху
polybar main1 2>&1 | tee -a /tmp/polybar-left.log & disown
polybar main 2>&1 | tee -a /tmp/polybar-right.log & disown; sleep 0.4

polybar main2 2>&1 | tee -a /tmp/polybar-center.log & disown

echo "Все панели Polybar успешно запущены!"

