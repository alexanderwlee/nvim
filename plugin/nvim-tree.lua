require("nvim-tree").setup()

vim.keymap.set("n", "<leader>nt", ":NvimTreeOpen<CR>", { noremap = true, silent = true })
