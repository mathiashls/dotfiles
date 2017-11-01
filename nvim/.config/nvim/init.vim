set encoding=utf-8
set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')


    "Plug 'gmarik/Vundle.vim'

    " useful stuff
    Plug 'mhinz/vim-startify'

    " cosmetic stuff
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'chriskempson/base16-vim'
    Plug 'edkolev/tmuxline.vim'

    " coding stuff
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'yggdroot/indentline'
    Plug 'w0rp/ale'
    Plug 'sheerun/vim-polyglot'
    function! DoRemote(arg)
        UpdateRemotePlugins
    endfunction
    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
    Plug 'zchee/deoplete-jedi', { 'for': 'python' }
    Plug 'zchee/deoplete-clang'

call plug#end()

filetype plugin indent on

" Deoplete Settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#source#jedi#show_docstrings = 1
autocmd CompleteDone * pclose

" Key mapping
" -> vim arrows on differente files inside vim
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" -> figutive keys
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>

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
set clipboard=unnamed

" Color
let base16colorspace=256
set background=dark
colorscheme base16-monokai
source ~/.vimrc_background

" Airline stuff
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
" let g:gitgutter_highlight_lines = 1

" Clang shit
let g:deoplete#sources#clang#libclang_path='/usr/local/Cellar/llvm/4.0.1/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header='/usr/local/Cellar/llvm/4.0.1/lib/clang'

" Tmux powerline
let g:tmuxline_powerline_separators = 0

" fzf config
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
