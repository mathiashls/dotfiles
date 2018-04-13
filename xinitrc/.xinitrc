export WALLPAPER=$(find /usr/share/wallpapers -type f | shuf -n1)
feh --bg-scale $WALLPAPER
exec i3
