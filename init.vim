" Settings
let mapleader = ' ' " use space for leader key
set clipboard+=unnamedplus " always use the clipboard for all operations
set colorcolumn=80,100 " set ruler at 80 and 100 characters
set completeopt=menu,menuone,noselect " completion options
set expandtab " replace <Tab> with spaces
set hidden " enable new buffer creation without saving previous buffer
set ignorecase " ignore case when searching
set mouse=a " enable mouse for scrolling and resizing
set number " line numbers
set relativenumber " set relative line numbers
set shiftwidth=4 " number of spaces to use for each step of (auto)indent
set smartcase " override 'ignorecase' if the search pattern contains upper case characters
set spell " check words for spelling
set termguicolors " use gui colors
set textwidth=80 " maximum width of text that is being inserted

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
Plug 'bluz71/vim-moonfly-colors' " a dark colorscheme for vim
Plug 'christoomey/vim-tmux-navigator' " navigate between tmux panes and vim splits
Plug 'dense-analysis/ale' " asynchronous linting
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " markdown preview plugin
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'preservim/nerdcommenter' " comment text
Plug 'preservim/vim-markdown' " markdown vim mode
Plug 'sheerun/vim-polyglot' " a solid language pack for vim
Plug 'tpope/vim-fugitive' " git plugin
if has('nvim-0.6')
    Plug 'kyazdani42/nvim-tree.lua' " a file explorer tree for neovim
    Plug 'kyazdani42/nvim-web-devicons' " lua fork of vim-web-devicons for neovim
    Plug 'lewis6991/gitsigns.nvim' " git integration for buffers
    Plug 'neovim/nvim-lspconfig' " collection of configurations for built-in LSP client
    Plug 'nvim-lua/plenary.nvim' " lua functions (dependency for telescope)
    Plug 'nvim-lualine/lualine.nvim' " neovim statusline plugin
    Plug 'nvim-telescope/telescope.nvim' " fuzzy finder over lists
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " nvim treesitter configurations and abstraction layer
endif
call plug#end()

" Colorscheme
colorscheme moonfly " use nightfly colorscheme
