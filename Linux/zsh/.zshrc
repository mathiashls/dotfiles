BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

alias vim='nvim'
alias v='nvim'
export EDITOR="nvim"
export LD_LIBRARY_PATH="/usr/local/lib"
export PATH="$HOME:/usr/local/bin:/usr/local/sbin:$HOME/ubin:$HOME/st:$HOME/byne/scripts:$PATH"
export TERM=xterm-256color
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
plugins=(git)
source $ZSH/oh-my-zsh.sh
