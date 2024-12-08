-- Keymaps
require("keymaps.telescope")
require("keymaps.harpoon")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>fs", "<cmd>w<CR>")
vim.keymap.set("n", "<space>bk", "<cmd>q!<CR>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("v", "<C-j>", "<C-d>zz")
vim.keymap.set("v", "<C-k>", "<C-u>zz")
