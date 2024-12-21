return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")
        telescope.setup({
            pickers = {
                find_files = {
                    theme = "ivy",
                    hidden = true,
                },

                live_grep = {
                    theme = "ivy",
                },

                help_tags = {
                    theme = "ivy",
                },

                lsp_references = {
                    theme = "ivy",
                },
            },
            extensions = {
                fzf = {},
            },
        })
        telescope.load_extension("fzf")
        vim.keymap.set("n", "<leader>.", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>tn", function()
            builtin.find_files({
                cwd = vim.fn.stdpath("config"),
            })
        end, { desc = "Edit neovim cnofig from anywhere" })
        vim.keymap.set("n", "<leader>ts", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set(
            "n",
            "<leader>tr",
            builtin.lsp_references,
            { desc = "Telescope lsp references" }
        )
        vim.keymap.set("n", "gd", function()
            builtin.lsp_definitions({ jump_type = "tab" })
        end, { desc = "Telescope go to definition" })
    end,
}
