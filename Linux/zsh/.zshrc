BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

alias vim='nvim'
alias v='nvim'
export EDITOR="nvim"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"
export LD_LIBRARY_PATH="/usr/local/lib"
export PATH="/home/mathias/:/usr/local/bin:/usr/local/sbin:/home/mathias/ubin:/home/mathias/st:$PATH"
export TERM=xterm-256color
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper_lazy.sh

export ZSH=/home/mathias/.oh-my-zsh
ZSH_THEME="steeef"
plugins=(git)
source $ZSH/oh-my-zsh.sh
