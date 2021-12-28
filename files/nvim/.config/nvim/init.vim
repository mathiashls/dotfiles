set encoding=utf-8
set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

    " Useful shit
    Plug 'mhinz/vim-startify'
    Plug 'airblade/vim-gitgutter'
    Plug 'scrooloose/nerdcommenter'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Fancy shit
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'chriskempson/base16-vim'

    " Coding shit
    Plug 'sheerun/vim-polyglot'
    Plug 'yggdroot/indentline'
    Plug 'dense-analysis/ale'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'

    " React / JS Stuff
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'jparise/vim-graphql'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin indent on

" JS CoC
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" JavaScript and TypeScript Performance Enhancement
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" vim like arrows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"  fugitive keys
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gb :Gblame<CR>

" gitGutter Settings
nmap <Leader>ha <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
nmap <Leader>hv <Plug>(GitGutterPreviewHunk)
nmap <Leader>hn <Plug>(GitGutterNextHunk)
nmap <Leader>hp <Plug>(GitGutterPrevHunk)

" fzf keys
nmap <leader>ff :Files<CR>
nmap <leader>fg :Ag<space>

" vim stuff
syntax on
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set number
set colorcolumn=80
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)
set clipboard=unnamedplus
set noswapfile

" Color
let base16colorspace=256
colorscheme base16-gruvbox-dark-soft

" Airline stuff
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" fzf config
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
