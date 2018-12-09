# Choose wallpaper
export WALLPAPER=$(find /home/mathias/wallpapers -type f | shuf -n1)
feh --bg-scale $WALLPAPER

# Start pulseaudio
pulseaudio --start
start-pulseaudio-x11

exec i3
