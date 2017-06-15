[[ -f ~/.xmodmaprc ]] && xmodmap ~/.xmodmaprc &
sxhkd &
exec bspwm
