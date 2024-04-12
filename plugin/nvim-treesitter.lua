require("nvim-treesitter.configs").setup({
  ensure_installed = { "python", "java", "cpp", "bash", "lua", "vim", "markdown", "yaml" },
  highlight = {
    enable = true,
  },
})
