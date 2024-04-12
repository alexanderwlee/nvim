-- Settings
vim.opt.clipboard = "unnamedplus" -- always use the clipboard for all operations
vim.opt.completeopt = { "menu", "menuone" } -- completion options
vim.opt.expandtab = true -- replace tab with spaces
vim.opt.foldenable = false -- disable folding at startup (use 'zi' to enable)
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- use treesitter fold expression
vim.opt.foldmethod = "expr" -- use expression as foldmethod
vim.opt.hidden = true -- enable new buffer creation without saving previous buffer
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.number = true -- line numbers
vim.opt.relativenumber = true -- set relative line numbers
vim.opt.showmode = false -- don't show mode on the last line
vim.opt.signcolumn = "yes" -- always draw the signcolumn
vim.opt.smartcase = true -- override 'ignorecase' if the search pattern contains upper case characters
vim.opt.termguicolors = true -- use GUI colors

-- Leader
vim.g.mapleader = " " -- use space as leader key

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = true,
  },

  -- color scheme
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme moonfly]])
    end,
  },

  -- markdown preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
  },

  -- linter
  "mfussenegger/nvim-lint",

  -- formatter
  "stevearc/conform.nvim",

  -- file explorer tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
  },

  -- git integration for buffers
  "lewis6991/gitsigns.nvim",

  -- collection of configurations for built-in LSP client
  "neovim/nvim-lspconfig",

  -- status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- fuzzy finder over lists
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- nvim treesitter configurations and abstraction layer
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- comment text
  {
    "numToStr/Comment.nvim",
    config = true,
  },

  -- git plugin
  "tpope/vim-fugitive",
})
