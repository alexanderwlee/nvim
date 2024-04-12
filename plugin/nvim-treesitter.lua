require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "python",
    "java",
    "cpp",
    "bash",
    "markdown",
    "yaml",
  },
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>gi", -- set to `false` to disable one of the mappings
      node_incremental = "<leader>gn",
      scope_incremental = "<leader>gs",
      node_decremental = "<leader>gm",
    },
  },
})
