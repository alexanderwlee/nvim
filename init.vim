" Settings
set clipboard+=unnamedplus " always use the clipboard for all operations
set completeopt=menu,menuone,noselect " completion options
set expandtab " replace <Tab> with spaces
set hidden " enable new buffer creation without saving previous buffer
set ignorecase " ignore case when searching
set mouse=a " enable mouse for scrolling and resizing
set noshowmode " don't show mode on the last line
set number " line numbers
set relativenumber " set relative line numbers
set signcolumn=yes " always draw the signcolumn
set smartcase " override 'ignorecase' if the search pattern contains upper case characters
set termguicolors " use GUI colors

" Leader
let mapleader="\<Space>" " use <Space> as leader key

" Plugins
call plug#begin()
Plug 'SirVer/ultisnips' " the ultimate snippets solution for vim
Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
Plug 'bluz71/vim-moonfly-colors' " a dark color scheme for vim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " markdown preview plugin
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'jose-elias-alvarez/null-ls.nvim' " inject lsp diagnostics and code actions
Plug 'kyazdani42/nvim-tree.lua' " a file explorer tree for neovim
Plug 'kyazdani42/nvim-web-devicons' " lua fork of vim-web-devicons for neovim
Plug 'lervag/vimtex' " filetype plugin for LaTeX files
Plug 'lewis6991/gitsigns.nvim' " git integration for buffers
Plug 'neovim/nvim-lspconfig' " collection of configurations for built-in LSP client
Plug 'nvim-lua/plenary.nvim' " lua functions
Plug 'nvim-lualine/lualine.nvim' " neovim statusline
Plug 'nvim-telescope/telescope.nvim' " fuzzy finder over lists
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " nvim treesitter configurations and abstraction layer
Plug 'preservim/nerdcommenter' " comment text
Plug 'preservim/vim-markdown' " markdown vim mode
Plug 'sheerun/vim-polyglot' " a solid language pack for vim
Plug 'tpope/vim-fugitive' " git plugin
call plug#end()

" Color scheme
colorscheme moonfly
