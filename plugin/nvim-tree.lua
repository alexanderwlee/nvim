require'nvim-tree'.setup()

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "<leader>nt", '<cmd>NvimTreeOpen<cr>', opts)
