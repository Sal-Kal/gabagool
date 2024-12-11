return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() 
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Harpoon add mark' })
        vim.keymap.set('n', '<leader>h', ui.toggle_quick_menu, { desc = 'Harpoon quick menu' })
        vim.keymap.set('n', '<C-u>',function() ui.nav_file(1) end, { desc = 'Harpoon window 1' })
        vim.keymap.set('n', '<C-i>',function() ui.nav_file(2) end, { desc = 'Harpoon window 2' })
        vim.keymap.set('n', '<C-o>',function() ui.nav_file(3) end, { desc = 'Harpoon window 3' })
        vim.keymap.set('n', '<C-p>',function() ui.nav_file(4) end, { desc = 'Harpoon window 4' })
        vim.keymap.set('n', '<S-j>', ui.nav_next, { desc = 'Harpoon next window' })
        vim.keymap.set('n', '<S-K>', ui.nav_prev, { desc = 'Harpoon prev window' })
    end
}
