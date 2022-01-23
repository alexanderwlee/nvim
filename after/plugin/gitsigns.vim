lua require('gitsigns').setup()

nnoremap ]c <cmd>Gitsigns next_hunk<cr>
nnoremap [c <cmd>Gitsigns prev_hunk<cr>
nnoremap <leader>hp <cmd>Gitsigns preview_hunk<cr>
