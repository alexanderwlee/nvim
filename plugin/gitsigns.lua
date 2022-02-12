require('gitsigns').setup { preview_config = { border = 'rounded' } }

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "<leader>ph", '<cmd>lua require("gitsigns").preview_hunk()<cr>', opts)
map("n", "<leader>bl", '<cmd>lua require("gitsigns").blame_line()<cr>', opts)
map("n", "]c", '<cmd>lua require("gitsigns").next_hunk()<cr>', opts)
map("n", "[c", '<cmd>lua require("gitsigns").prev_hunk()<cr>', opts)
