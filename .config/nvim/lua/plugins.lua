local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(
    function()
        use 'wbthomason/packer.nvim'

        -- common
        use 'tpope/vim-commentary'
        use 'tpope/vim-fugitive' -- Git commands
        use 'tpope/vim-surround' -- surround characters shortcuts
        use 'airblade/vim-gitgutter' -- Git highlights
        use 'chriskempson/base16-vim'
        use 'vim-airline/vim-airline' -- powerline
        use 'vim-airline/vim-airline-themes'
        use 'yggdroot/indentline' -- vertical lines showing indentation
        use 'bronson/vim-trailing-whitespace' -- highlight trailing spaces
        use 'rhysd/git-messenger.vim' -- popup window showing commit info
        use 'scrooloose/nerdcommenter' -- commenting shortcuts

        use {
            'junegunn/fzf.vim',
            requires = { 'junegunn/fzf', run = ':call fzf#install()' }
        }

        use {
            'andymass/vim-matchup',
            setup = function() -- may set any options here
                vim.g.matchup_matchparen_offscreen = { method = "popup" }
            end
        }

        -- general dev
        use {
            "neovim/nvim-lspconfig",
            requires = {
                use 'williamboman/nvim-lsp-installer',
                use 'tami5/lspsaga.nvim',
                use 'onsails/lspkind.nvim', -- icons in autocomplete source
            },
            config = function()
                require("config/lsp")
            end,
        }

        use {
            "hrsh7th/nvim-cmp",
            requires = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "saadparwaiz1/cmp_luasnip",
                "L3MON4D3/LuaSnip",
                "rafamadriz/friendly-snippets",
                "hrsh7th/cmp-nvim-lsp-signature-help",
            },
            config = function()
                require("config/cmp")
            end,
        }

        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                ts_update()
            end,
            config = function()
                require("config/treesitter")
            end,
        }

        -- javascript
        use { 'HerringtonDarkholme/yats.vim', ft = 'typescript' }
        use { 'posva/vim-vue' } -- Vue highlighting
        use 'othree/javascript-libraries-syntax.vim'
    end
)
