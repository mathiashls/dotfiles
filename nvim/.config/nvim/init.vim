set encoding=utf-8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    Plugin 'gmarik/Vundle.vim'
    Plugin 'yggdroot/indentline'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'chriskempson/base16-vim'
    Plugin 'w0rp/ale'
    function! DoRemote(arg)
        UpdateRemotePlugins
    endfunction
    Plugin 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
    Plugin 'zchee/deoplete-jedi', { 'for': 'python' }

call vundle#end()

filetype plugin indent on

" Deoplete Settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#source#jedi#show_docstrings = 1
autocmd CompleteDone * pclose

" Vim stuff
syntax on
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set number
set colorcolumn=80
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" Color
let base16colorspace=256
set background=dark
colorscheme base16-monokai
source ~/.vimrc_background


" Airline stuff
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
