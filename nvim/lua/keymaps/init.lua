-- Keymaps

-- Sourcing
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")

-- General
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>fs", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>bk", "<cmd>q!<CR>")
vim.keymap.set("n", "<leader>o", "<cmd>Ex<CR>")

-- Indenting
-- vim.keymap.set("n", "<leader>i", "mxgg=G'x")

-- Movements
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("v", "<C-j>", "<C-d>zz")
vim.keymap.set("v", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "<C-l>", "zz")

-- Buffers
vim.keymap.set("n", "bo", "<cmd>bnext<CR>")
vim.keymap.set("n", "bi", "<cmd>bprev<CR>")

-- Tabs
vim.keymap.set("n", "tn", "<cmd>tabnew<CR>")
vim.keymap.set("n", "to", "<cmd>tabnext<CR>")
vim.keymap.set("n", "ti", "<cmd>tabprev<CR>")

-- Quickfix navigation
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
