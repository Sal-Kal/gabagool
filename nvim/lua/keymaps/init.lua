-- Keymaps

-- Sourcing
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")

-- General
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>fs", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>bk", "<cmd>q!<CR>")
-- vim.keymap.set("n", "<leader>o", "<cmd>Ex<CR>")

-- Indenting
-- vim.keymap.set("n", "<leader>i", "mxgg=G'x")

-- Movements
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("v", "<C-j>", "<C-d>zz")
vim.keymap.set("v", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "<C-l>", "zz")

-- Buffers
vim.keymap.set("n", "bl", "<cmd>bnext<CR>")
vim.keymap.set("n", "bh", "<cmd>bprev<CR>")
vim.keymap.set("n", "bb", "<cmd>buffers<CR>")
vim.keymap.set("n", "bd", "<cmd>%bd|e#<CR>")

-- Tabs
vim.keymap.set("n", "tn", "<cmd>tabnew<CR>")
vim.keymap.set("n", "tl", "<cmd>tabnext<CR>")
vim.keymap.set("n", "th", "<cmd>tabprev<CR>")
vim.keymap.set("n", "tu", "1gt", { noremap = true, silent = true })
vim.keymap.set("n", "ti", "2gt", { noremap = true, silent = true })
vim.keymap.set("n", "to", "3gt", { noremap = true, silent = true })
vim.keymap.set("n", "tp", "4gt", { noremap = true, silent = true })
vim.keymap.set("n", "t7", "5gt", { noremap = true, silent = true })
vim.keymap.set("n", "t8", "6gt", { noremap = true, silent = true })
vim.keymap.set("n", "t9", "7gt", { noremap = true, silent = true })
vim.keymap.set("n", "t0", "8gt", { noremap = true, silent = true })

-- Quickfix navigation
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

-- Prevent delete commands from yanking (normal, visual, and visual-block modes)
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set("n", "dd", '"_dd')
vim.keymap.set({ "n", "v" }, "D", '"_D')

-- Prevent change commands from yanking (normal, visual, and visual-block modes)
vim.keymap.set({ "n", "v" }, "c", '"_c')
vim.keymap.set("n", "cc", '"_cc')
vim.keymap.set({ "n", "v" }, "C", '"_C')

-- Prevent visual mode paste from yanking replaced text
vim.keymap.set("x", "p", '"_dP')

-- Cut and paste behaviour
vim.keymap.set("n", "<C-x>", "dd", { remap = false, desc = "Delete and yank (normal mode)" })
vim.keymap.set("v", "<C-x>", "d", { remap = false, desc = "Delete and yank (visual mode)" })

-- Quit all
vim.keymap.set("n", "<leader>wq", ":wqa<CR>")
vim.keymap.set("n", "<leader>q", ":qa!<CR>")

-- Command line navigation
vim.keymap.set("c", "<Up>", "<C-p>", { noremap = true })
vim.keymap.set("c", "<Down>", "<C-n>", { noremap = true })
