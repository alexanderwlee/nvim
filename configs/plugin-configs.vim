" vim-devicons
set guifont=MesloLGS\ NF:h16  " set Vim font to a Nerd Font

" nightfly colorscheme
let g:nightflyCursorColor = 1  " enable cursor color
let g:nightflyUnderlineMatchParen = 1  " underline matching parentheses
let g:nightflyTransparent = 1  " use transparent background
colorscheme nightfly  " use nightfly colorscheme

" airline
set noshowmode " remove default status bar

" NERDTree
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
let NERDTreeMinimalUI = 1  " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
let NERDTreeShowHidden = 1  " Tells the NERDTree whether to display hidden files on startup.

" vim-gitgutter
set updatetime=100  " reduce delay to 100ms

" CoC
source ~/.config/nvim/configs/coc-configs.vim

" ALE
" map for :ALEFix
nmap <leader>fx <Plug>(ale_fix)
let g:ale_linters = {
      \'python': ['flake8'],
      \'tex': ['chktex'],
      \}  " linters
let g:ale_fixers = {
            \'*': ['remove_trailing_lines', 'trim_whitespace'],
            \'python': ['black', 'remove_trailing_lines', 'trim_whitespace'],
            \'java': ['google_java_format', 'remove_trailing_lines', 'trim_whitespace'],
            \'cpp': ['clang-format', 'remove_trailing_lines', 'trim_whitespace']
            \}  " fixers
let g:ale_python_flake8_options = '--max-line-length=99'
let g:ale_python_black_options = '--line-length=99'
let g:ale_fix_on_save = 1  " fix on save
let g:ale_fix_on_save_ignore = ['black', 'google_java_format', 'clang-format']

" vim-markdown
let g:vim_markdown_conceal = 0  " disable concealing syntax for markdown
let g:vim_markdown_conceal_code_blocks = 0  " disable conceal for code blocks in markdown

" vimtex
let g:vimtex_view_method = 'skim'  " use skim as pdf viewer

" indentLine
let g:indentLine_enabled = 0  " disable indentLine by default
let g:indentLine_char = '│'  " use prettier lines
