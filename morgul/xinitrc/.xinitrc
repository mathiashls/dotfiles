export WALLPAPER=$(find /usr/share/wallpaper -type f | shuf -n1)
feh --bg-scale $WALLPAPER
exec i3
