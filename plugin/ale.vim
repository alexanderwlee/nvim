let g:ale_linters = {
\   'python': ['flake8'],
\   'java': ['checkstyle'],
\   'tex': ['chktex'],
\   'markdown': ['mdl'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'remove_trailing_lines', 'trim_whitespace'],
\   'java': ['google_java_format', 'remove_trailing_lines', 'trim_whitespace'],
\   'sh': ['shfmt', 'remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_python_flake8_options='--max-line-length=100'
let g:ale_fix_on_save = 1
let g:ale_fix_on_save_ignore = ['black']

nnoremap <leader>at <cmd>ALEToggle<cr>
nnoremap <leader>af <cmd>ALEFix<cr>
nnoremap <leader>ad <cmd>ALEDetail<cr>
nnoremap ]a <cmd>ALENextWrap<cr>
nnoremap [a <cmd>ALEPreviousWrap<cr>
