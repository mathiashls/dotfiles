BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export TERM=xterm-256color
export PATH=/usr/local/bin:/Users/mathias/.scripts:$PATH
alias vim='nvim'
alias v='nvim'
alias la='ls -la'
alias byne='connect_console.sh'
alias codir='cd /Users/mathias/Documents/code/'
alias bdir='cd /Users/mathias/Documents/code/BYNE'
alias ptc='cd /Users/mathias/Documents/code/IFSC/PTC'
alias pji='cd /Users/mathias/Documents/code/IFSC/PJI3'
alias ste='cd /Users/mathias/Documents/code/IFSC/STE'
alias ifsc='/Users/mathias/Documents/code/IFSC'
alias paleale='. .scripts/paleale_virtualenv.sh'

# oh my zsh stuff
export ZSH=/Users/mathias/.oh-my-zsh
#ZSH_THEME="robbyrussell"
ZSH_THEME="steeef"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# export WORKON_HOME=$HOME/.virtualenvs
# source /usr/local/bin/virtualenvwrapper.sh
