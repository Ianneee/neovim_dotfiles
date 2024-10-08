-- https://github.com/junegunn/vim-plug
-- :PlugInstall :PlugClean

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'lervag/vimtex'

-- Colorscheme
Plug 'sainnhe/sonokai'

Plug 'tpope/vim-surround'

-- Git
Plug 'NeogitOrg/neogit'
Plug 'sindrets/diffview.nvim'
Plug 'lewis6991/gitsigns.nvim'

Plug 'ibhagwan/fzf-lua'

Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'

-- Fs tree + deps
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-tree/nvim-web-devicons'

-- LSP configurations
Plug 'neovim/nvim-lspconfig'

-- LSP autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'

-- Lps for java
Plug "mfussenegger/nvim-jdtls"

-- Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

-- Treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug 'windwp/nvim-autopairs'

Plug 'windwp/nvim-ts-autotag'
-- EditorConfig
Plug 'editorconfig/editorconfig-vim'


vim.call('plug#end')
