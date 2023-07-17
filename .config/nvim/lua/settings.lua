vim.g.maplocalleader = '\\'

-- basic settings
vim.opt.encoding = "utf-8"
vim.opt.backspace = "indent,eol,start" -- backspace works on every char in insert mode
vim.opt.clipboard = "unnamedplus" -- backspace works on every char in insert mode

-- Mapping waiting time
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100

-- Display
vim.opt.showmatch  = true -- show matching brackets
vim.opt.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.opt.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.opt.laststatus = 2 -- always show status line
vim.opt.colorcolumn = '80' -- always show status line

vim.opt.list = false -- do not display white characters
vim.opt.foldenable = false
vim.opt.foldlevel = 4 -- limit folding to 4 levels
vim.opt.foldmethod = 'syntax' -- use language syntax to generate folds
vim.opt.wrap = false --do not wrap lines even if very long
vim.opt.eol = false -- show if there's no eol char
vim.opt.showbreak= '↪' -- character to show when line is broken

-- Sidebar
vim.opt.number = true -- line number on the left
vim.opt.numberwidth = 3 -- always reserve 3 spaces for line number
vim.opt.modelines = 0
vim.opt.showcmd = true -- display command in bottom bar

-- Indent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.number = true

-- Color
vim.opt.syntax = 'on'
vim.opt.background = 'dark'
vim.g.base16colorspace = 256
vim.cmd('colorscheme base16-ashes')

-- airline
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme='base16'
vim.g.laststatus = 2
