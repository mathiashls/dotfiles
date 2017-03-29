BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

alias vim='nvim'
export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"
export LD_LIBRARY_PATH="/usr/local/lib"
export LANG="en_US"
export C_CTYPE="en_US"
export PATH="/usr/local/bin:/usr/local/sbin:/home/mathias/st-0.7:/home/mathias/altera_lite/16.0/quartus/bin:/home/mathias/scripts:$PATH"
export TERM=xterm-256color
export QSYS_ROOTDIR="/home/mathias/altera_lite/16.0/quartus/sopc_builder/bin"
