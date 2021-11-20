let g:ale_linters = {
\     'python': ['flake8'],
\     'java': ['checkstyle'],
\     'tex': ['chktex'],
\     'markdown': ['mdl'],
\}
let g:ale_fixers = {
\     '*': ['remove_trailing_lines', 'trim_whitespace'],
\     'python': ['black', 'remove_trailing_lines', 'trim_whitespace'],
\     'java': ['google_java_format', 'remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1
let g:ale_fix_on_save_ignore = ['black']

nnoremap <leader>at :ALEToggle<CR>
nnoremap <leader>af :ALEFix<CR>
nnoremap <leader>ad :ALEDetail<CR>
nnoremap ]a :ALENextWrap<CR>
nnoremap [a :ALEPreviousWrap<CR>
