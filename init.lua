-- Settings
vim.opt.clipboard = "unnamedplus" -- always use the clipboard for all operations
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- completion options
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
require("packer").startup(function(use)
  use("wbthomason/packer.nvim") -- package manager
  use("lukas-reineke/indent-blankline.nvim") -- indent guides for neovim
  use({ "bluz71/vim-moonfly-colors", as = "moonfly" }) -- a dark color scheme for vim
  use({
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  }) -- markdown preview plugin
  use("jiangmiao/auto-pairs") -- insert or delete brackets, parens, quotes in pair
  use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" }) -- inject lsp diagnostics and code actions
  use({ "nvim-tree/nvim-tree.lua", requires = "nvim-tree/nvim-web-devicons" }) -- a file explorer tree for neovim
  use("lervag/vimtex") -- filetype plugin for LaTeX files
  use("lewis6991/gitsigns.nvim") -- git integration for buffers
  use("neovim/nvim-lspconfig") -- collection of configurations for built-in LSP client
  use({ "nvim-lualine/lualine.nvim", requires = "kyazdani42/nvim-web-devicons" }) -- neovim statusline
  use({ "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" }) -- fuzzy finder over lists
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- nvim treesitter configurations and abstraction layer
  use("preservim/nerdcommenter") -- comment text
  use("preservim/vim-markdown") -- markdown vim mode
  use("tpope/vim-fugitive") -- git plugin
end)

-- Color scheme
vim.cmd([[colorscheme moonfly]])
