export WALLPAPER=$(find /home/mathias/wallpapers -type f | shuf -n1)
feh --bg-scale $WALLPAPER
exec i3
