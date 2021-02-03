" vim-devicons
set guifont=MesloLGS\ NF:h18  " set Vim font to a Nerd Font

" colorscheme: nightfly
set termguicolors  " allows colorscheme to work
colorscheme nightfly  " use nightfly colorscheme
hi Normal guibg=NONE ctermbg=NONE  " make background follow iTerm's transparency configurations

" airline
" use some powerline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty=' ⚡'

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
" install the missing extensions after coc.nvim service started
let g:coc_global_extensions = ['coc-pyright', 'coc-java', 'coc-json']
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" ALE
let g:ale_enabled = 0  " do not auto lint; want to use linting from coc instead of ale
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}  " fixers for all files
let g:ale_fix_on_save = 1  " fix on save

" vim-markdown
let g:vim_markdown_conceal = 0  " disable concealing syntax for markdown
let g:vim_markdown_conceal_code_blocks = 0  " disable conceal for code blocks in markdown

" indentLine
let g:indentLine_enabled = 0  " disable indentLine by default
let g:indentLine_char = '│'  " use prettier lines

" calendar.vim
source ~/.cache/calendar.vim/credentials.vim
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:calendar_date_month_name = 1
let g:calendar_cyclic_view = 1
