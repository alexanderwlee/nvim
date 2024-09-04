require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "cpp",
    "go",
    "lua",
    "markdown",
    "python",
    "query",
    "vim",
    "vimdoc",
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
