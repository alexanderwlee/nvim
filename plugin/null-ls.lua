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
	diagnostics.mdl,
	diagnostics.selene,
	diagnostics.shellcheck,

	-- Formatting
	formatting.black,
	formatting.google_java_format,
	formatting.latexindent,
	formatting.shfmt,
	formatting.stylua,
	formatting.trim_newlines,
	formatting.trim_whitespace,
}

-- Format on save
local on_attach = function(client)
	if client.resolved_capabilities.document_formatting then
		vim.cmd([[
      augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
      augroup END
    ]])
	end
end

null_ls.setup({
	sources = sources,
	on_attach = on_attach,
})
