require("configs")
require("keymaps")

-- Universal Options
vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true

-- Auto Commands
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
