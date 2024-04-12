local null_ls = require("null-ls")

local builtins = null_ls.builtins
local diagnostics = builtins.diagnostics

local sources = {
  -- Diagnostics
  diagnostics.flake8,
  diagnostics.cppcheck,
  diagnostics.mdl,
  diagnostics.selene,
  diagnostics.shellcheck,
}

null_ls.setup({
  sources = sources,
  -- on_attach = on_attach,
})
