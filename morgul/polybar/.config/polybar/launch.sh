#!/usr/bin/env sh
# Inspired by davidarrieta

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar top &
