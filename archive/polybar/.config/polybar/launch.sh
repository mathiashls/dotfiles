#!/usr/bin/env sh
# Inspired by davidarrieta

killall -q polybar

if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload top &
fi