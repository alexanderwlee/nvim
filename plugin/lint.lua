local lint = require("lint")

lint.linters_by_ft = {
  python = { "flake8" },
  markdown = { "vale" },
  lua = { "selene" },
  sh = { "shellcheck" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in
    -- `linters_by_ft` for the current filetype
    lint.try_lint()
  end,
})
