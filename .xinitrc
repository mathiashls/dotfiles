# Choose wallpaper
export WALLPAPER=$(find /home/mathiashls/pictures/wallpapers/ -type f | shuf -n1)
feh --bg-scale $WALLPAPER

setxkbmap -model pc104 -layout us -variant intl -option caps:ctrl_modifier

# Start pulseaudio
pulseaudio -k
pulseaudio --start
start-pulseaudio-x11

exec i3
