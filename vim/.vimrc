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
    Plugin 'scrooloose/syntastic'
    Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on

" Vim stuff
syntax on
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set number

" Color
let base16colorspace=256
set background=dark
colorscheme base16-monokai
source ~/.vimrc_background


" Airline stuff
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
