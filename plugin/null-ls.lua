local null_ls = require("null-ls")

local builtins = null_ls.builtins
local diagnostics = builtins.diagnostics
local formatting = builtins.formatting

local sources = {
  -- Diagnostics
  diagnostics.chktex.with({
    -- Execute \input statements
    extra_args = { "-I" },
  }),
  diagnostics.flake8,
  diagnostics.checkstyle.with({
    extra_args = { "-c", "/google_checks.xml" },
  }),
  diagnostics.cppcheck,
  diagnostics.mdl,
  diagnostics.selene,
  diagnostics.shellcheck,

  -- Formatting
  formatting.black,
  formatting.google_java_format,
  formatting.clang_format.with({
    filetypes = { "c", "cpp" },
  }),
  formatting.shfmt.with({
    -- Indent with 4 spaces
    extra_args = { "-i", "4" },
  }),
  formatting.stylua.with({
    extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
  }),
  formatting.trim_newlines,
  formatting.trim_whitespace,
}

-- Format on save
-- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts
local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      -- Only use null-ls for formatting
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
    })
  end
end

null_ls.setup({
  sources = sources,
  on_attach = on_attach,
})
