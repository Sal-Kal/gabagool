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

-- Prevent delete commands from yanking (normal, visual, and visual-block modes)
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set("n", "dd", '"_dd')
vim.keymap.set({ "n", "v" }, "D", '"_D')

vim.keymap.set({ "n", "v" }, "c", '"_c')
vim.keymap.set("n", "cc", '"_cc')
vim.keymap.set({ "n", "v" }, "C", '"_C')

-- Prevent visual mode paste from yanking replaced text
vim.keymap.set("x", "p", '"_dP')

-- Cut paste behavior.
vim.keymap.set("n", "<C-x>", "<cmd>delete<CR>")
vim.keymap.set("x", "<C-x>", ":delete<CR>")
