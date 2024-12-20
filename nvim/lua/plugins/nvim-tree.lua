return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                float = {
                    enable = true,
                    open_win_config = {
                        relative = "editor",
                        border = "rounded",
                        width = 50,
                        height = 30,
                        row = 1,
                        col = 1,
                    },
                },
            },
            update_focused_file = {
                enable = true,
                update_root = false,
            },
        })
        -- Key mapping for leader + o
        vim.keymap.set("n", "<leader>o", function()
            require("nvim-tree.api").tree.open({ find_file = true })
        end, { noremap = true, silent = true })
    end,
}
