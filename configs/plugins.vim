call plug#begin('~/.config/nvim/plugged')
if !has('nvim')
  Plug 'noahfrederick/vim-neovim-defaults'  " nvim defaults for vim
endif
Plug 'scrooloose/nerdtree'  " show file tree explorer
Plug 'Xuyuanp/nerdtree-git-plugin'  " show git status flags with NERDTree
Plug 'jiangmiao/auto-pairs'  "  insert or delete brackets, parens, quotes in pair
Plug 'preservim/nerdcommenter'  " comment text
Plug 'tpope/vim-surround'  " delete, change, and add surroundings in pairs
Plug 'airblade/vim-gitgutter'  " show git diff markers in the sign column
Plug 'tpope/vim-fugitive'  " git plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fuzzy finder (fzf)
Plug 'junegunn/fzf.vim'  "fzf plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " language server plugin
Plug 'sheerun/vim-polyglot'  " collection of language packs for Vim
Plug 'dense-analysis/ale'  " asynchronous linting
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }  " markdown preview plugin
Plug 'Yggdroot/indentLine'  " display the indention levels with thin vertical lines
Plug 'majutsushi/tagbar'  " displays tags in a window
Plug 'mbbill/undotree'  " undo history visualizer
Plug 'ryanoasis/vim-devicons'  " filetype icons for Vim plugins
Plug  'itchyny/calendar.vim'  " calendar plugin
Plug 'vim-airline/vim-airline'  " status line
Plug 'bluz71/vim-nightfly-guicolors'  " nightfly colorscheme
call plug#end()
