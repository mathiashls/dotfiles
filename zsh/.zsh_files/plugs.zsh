if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

zplug "mafredri/zsh-async"

zplug "zsh-users/zsh-completions"
zplug "tj/git-extras", as:plugin, use:"etc/*.zsh"

zplug "sapegin/shipit", as:command, use:bin/shipit
zplug "unixorn/git-extra-commands"

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "chriskempson/base16-shell", as:plugin, use:base16-shell.plugin.zsh

# zplug "sindresorhus/pure" # branch and enviroment
zplug "yardnsm/blox-zsh-theme" # branch and commit

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load #--verbose
