[[ -f ~/.xmodmaprc ]] && xmodmap ~/.xmodmaprc &
setxkbmap br &
sxhkd &
exec bspwm
