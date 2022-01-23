lua require('gitsigns').setup { preview_config = { border = 'rounded' } }

nnoremap ]c <cmd>Gitsigns next_hunk<cr>
nnoremap [c <cmd>Gitsigns prev_hunk<cr>
nnoremap <leader>hp <cmd>Gitsigns preview_hunk<cr>
nnoremap <leader>hb <cmd>Gitsigns blame_line<cr>
