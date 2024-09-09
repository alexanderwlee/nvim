local dap = require("dap")

vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>c", dap.continue, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>n", dap.step_over, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>si", dap.step_into, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>so", dap.step_out, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rp", dap.repl.open, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rl", dap.run_last, { noremap = true, silent = true })

dap.adapters.lldb = {
  type = "executable",
  command = "/opt/homebrew/opt/llvm/bin/lldb-dap",
  name = "lldb",
}

local lldb = {
  name = "Launch lldb",
  type = "lldb",
  request = "launch",
  program = function()
    return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
  end,
  cwd = "${workspaceFolder}",
  stopOnEntry = false,
  args = {},
  runInTerminal = false,
}

dap.configurations.cpp = {
  lldb,
}

require("nvim-dap-virtual-text").setup()
