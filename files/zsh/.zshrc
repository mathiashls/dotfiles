BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

alias vim='nvim'
alias v='nvim'
alias sshadd='eval `ssh-agent -s` && ssh-add'
alias code='cd $HOME/code'
alias gcode='cd $HOME/code/games'
export EDITOR="nvim"
export LD_LIBRARY_PATH="/usr/local/lib"
export PATH="$HOME:/usr/local/bin:/usr/local/sbin:$HOME/ubin:$HOME/st:$HOME/byne/scripts:$PATH"
export TERM=xterm-256color
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/opt/node@14/bin:$PATH"

# BYNE shit
export ROOTDATA_DIR="/Users/mathiashls/byne/overlay"
export UCI_PATH="/Users/mathiashls/byne/config"
alias byne="cd ~/byne"
alias work='cd $HOME/byne/code'
alias pa='cd $HOME/byne/code/paleale-server'
