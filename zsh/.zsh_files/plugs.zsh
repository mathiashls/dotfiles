if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="steeef"

# Path to your oh-my-zsh installation.
export ZSH=/Users/mathias/.oh-my-zsh

plugins=(gitfast)

source $ZSH/oh-my-zsh.sh
