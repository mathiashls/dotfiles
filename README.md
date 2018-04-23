# Dotfiles

Mathias Hillesheim's dotfiles.

I decided to use a centralized folder system to make it easy to setup all my dotfiles.

I have one folder containing all the configuration for each PC or Notebook I use (home, college, work). As long as I keep my `$(hostname)` matching the correct folder that keeps the configs, all I need to do is run `./setup` and *magic will happen*.

| Hostname/config | Machine       |
|-----------------|---------------|
| morgul          | Desktop       |
| moria           | Thinkpad x230 |
| tirith          | Macbook       |

Requirements:

* zsh: Arch official repository
* stow: Arch official repository
* tmux: Arch official repository
* nvim: Arch official repository
* Oh My Zsh: https://github.com/robbyrussell/oh-my-zsh
* vim-plug: https://github.com/junegunn/vim-plug
* Tmux Plugin Manager: https://github.com/tmux-plugins/tpm
* base16_shell: https://github.com/chriskempson/base16-shell
* st: git://git.suckless.org/st
