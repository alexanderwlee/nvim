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
let mapleader = ' '  " use <space> for leader key
autocmd! GUIEnter * set vb t_vb=  " remove bells in MacVim
