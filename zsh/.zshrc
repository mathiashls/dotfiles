BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export TERM=xterm-256color
alias vim='nvim'
alias v='nvim'
alias la='ls -la'

# oh my zsh stuff
export ZSH=/Users/mathias/.oh-my-zsh
#ZSH_THEME="robbyrussell"
ZSH_THEME="steeef"
plugins=(git)
source $ZSH/oh-my-zsh.sh
