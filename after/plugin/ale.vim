" map for :ALEFix
nmap <leader>fx <Plug>(ale_fix)
let g:ale_linters = {
\     'python': ['flake8'],
\     'java': ['checkstyle'],
\     'tex': ['chktex'],
\     'markdown': ['mdl'],
\}  " linters
let g:ale_fixers = {
\     '*': ['remove_trailing_lines', 'trim_whitespace'],
\     'python': ['black', 'remove_trailing_lines', 'trim_whitespace'],
\     'java': ['google_java_format', 'remove_trailing_lines', 'trim_whitespace'],
\}  " fixers
let g:ale_fix_on_save = 1  " fix on save
let g:ale_fix_on_save_ignore = ['black', 'google_java_format']
