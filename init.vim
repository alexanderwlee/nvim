" Settings
set wrap  " enable line wrapping
set linebreak  " avoid wrapping a line in the middle of a word
set number  " line numbers
set relativenumber  " set relative line numbers
set ignorecase  " ignore case when searching
set smartcase  " automatically switch search to case-sensitive when search query constains an uppercase letter
set mouse=a  " enable mouse for scrolling and resizing
set hidden  " enable new buffer creation without saving previous buffer
set clipboard+=unnamedplus  " always use the clipboard for all operations
set completeopt=menu,menuone,noselect  " completion options
set foldmethod=indent  " define folds by the indent of lines
set foldlevel=100  " use high foldlevel to set all folds to be open by default
set termguicolors  " use gui colors
set colorcolumn=80  " set ruler at 80 characters
set noshowmode " remove default status bar
set updatetime=100  " reduce delay to 100ms
let mapleader = ' '  " use space for leader key

" Plugins
call plug#begin('~/.config/nvim/plugged')
if has('nvim-0.5')
    Plug 'neovim/nvim-lspconfig'  " collection of configurations for built-in LSP client
    Plug 'hrsh7th/cmp-nvim-lsp'  " LSP source for nvim-cmp
    Plug 'hrsh7th/cmp-buffer'  " nvim-cmp source for buffer words
    Plug 'hrsh7th/nvim-cmp'  " auto-completion plugin
    Plug 'ray-x/lsp_signature.nvim'  " LSP signature hints
    Plug 'nathanmsmith/nvim-ale-diagnostic'  " display nvim-lsp diagnostics in ALE
else
    Plug 'noahfrederick/vim-neovim-defaults'  " nvim defaults for vim
endif
Plug 'preservim/nerdcommenter'  " comment text
Plug 'tpope/vim-fugitive'  " git plugin
Plug 'airblade/vim-gitgutter'  " show git diff markers in the sign column
Plug 'sheerun/vim-polyglot'  " collection of language packs for Vim
Plug 'dense-analysis/ale'  " asynchronous linting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fzf
Plug 'junegunn/fzf.vim'  " fzf plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }  " markdown preview plugin
Plug 'Yggdroot/indentLine'  " display the indention levels with thin vertical lines
Plug 'majutsushi/tagbar'  " displays tags in a window
Plug 'mbbill/undotree'  " undo history visualizer
Plug 'christoomey/vim-tmux-navigator'  " navigate between tmux panes and vim splits
Plug 'vim-scripts/restore_view.vim'  " restore previous view (cursor and folds)
Plug 'vim-airline/vim-airline'  " status line
Plug 'jiangmiao/auto-pairs'  " insert or delete brackets, parens, quotes in pair
Plug 'bluz71/vim-nightfly-guicolors'  " nightfly colorscheme
call plug#end()
