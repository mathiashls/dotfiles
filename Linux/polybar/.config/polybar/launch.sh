#!/usr/bin/env sh
# Inspired by davidarrieta

CONNECTED_MONITOR=$(xrandr | grep " connected " | awk '{print$1}')
export CONNECTED_MONITOR
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar top &
