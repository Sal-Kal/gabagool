local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>.', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>s', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
