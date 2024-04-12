local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    go = { "gofmt" },
    python = { "black" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    sh = { "shfmt" },
    lua = { "stylua" },
    ["*"] = { "trim_whitespace", "trim_newlines" },
  },
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },
})

conform.formatters.shfmt = {
  -- Indent with 4 spaces
  prepend_args = { "-i", "4" },
}

conform.formatters.stylua = {
  prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
}
