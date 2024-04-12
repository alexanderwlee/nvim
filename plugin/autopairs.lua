local npairs = require("nvim-autopairs")

npairs.setup({
  fast_wrap = {
    map = "<C-w>",
  },
})

local Rule = require("nvim-autopairs.rule")

npairs.add_rule(Rule("$", "$", "tex"))
