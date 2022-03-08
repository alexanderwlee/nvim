" Settings
set clipboard+=unnamedplus " always use the clipboard for all operations
set colorcolumn=80,100 " set ruler at 80 and 100 characters
set completeopt=menu,menuone,noselect " completion options
set expandtab " replace <Tab> with spaces
set hidden " enable new buffer creation without saving previous buffer
set ignorecase " ignore case when searching
set mouse=a " enable mouse for scrolling and resizing
set noshowmode " don't show mode on the last line
set number " line numbers
set relativenumber " set relative line numbers
set shiftwidth=4 " number of spaces to use for each step of (auto)indent
set signcolumn=yes " always draw the signcolumn
set smartcase " override 'ignorecase' if the search pattern contains upper case characters
set termguicolors " use GUI colors
set textwidth=80 " maximum width of text that is being inserted
set updatetime=100 " set update time to 100ms

" Leader
let mapleader="\<Space>" " use <Space> as leader key

" Plugins
call plug#begin()
Plug 'SirVer/ultisnips' " the ultimate snippets solution for vim
Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
Plug 'airblade/vim-gitgutter' " shows a git diff in the sign column
Plug 'bluz71/vim-moonfly-colors' " a dark color scheme for vim
Plug 'christoomey/vim-tmux-navigator' " navigate between tmux panes and vim splits
Plug 'dense-analysis/ale' " asynchronous linting
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " markdown preview plugin
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf
Plug 'junegunn/fzf.vim' " fzf for vim
Plug 'lervag/vimtex' " filetype plugin for LaTeX files
Plug 'preservim/nerdcommenter' " comment text
Plug 'preservim/nerdtree' " a tree explorer plugin for vim
Plug 'preservim/vim-markdown' " markdown vim mode
Plug 'ryanoasis/vim-devicons' " adds filetype icons to vim plugins
Plug 'sheerun/vim-polyglot' " a solid language pack for vim
Plug 'tpope/vim-fugitive' " git plugin
Plug 'tpope/vim-sensible' " sensible defaults for vim
Plug 'vim-airline/vim-airline' " statusline for vim
if has('nvim-0.6')
    Plug 'kyazdani42/nvim-web-devicons'  " lua fork of vim-web-devicons for neovim
    Plug 'neovim/nvim-lspconfig'  " collection of configurations for built-in LSP client
    Plug 'nvim-lua/plenary.nvim' " lua functions
    Plug 'nvim-orgmode/orgmode' " orgmode clone for neovim
    Plug 'nvim-telescope/telescope.nvim' " fuzzy finder over lists
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " nvim treesitter configurations and abstraction layer
endif
call plug#end()

" Color scheme
colorscheme moonfly

" Vim-specific sequences for RGB colors; needed for 'termguicolors'
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
