require("nvim-tree").setup()
vim.api.nvim_set_keymap("n", "<leader>nt", "<cmd>NvimTreeOpen<CR>", { noremap = true, silent = false })
