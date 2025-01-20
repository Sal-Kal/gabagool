return {
    "Shatur/neovim-ayu",
    priority = 1000,
    config = function()
        require("ayu").setup({
            overrides = {
                Normal = { bg = "None" },
                NormalFloat = { bg = "none" },
                Pmenu = { bg = "None", fg = "#e6e1cf" },
                IncSearch = { bg = "#e6e1cf", fg = "#000000" },
                MiniTablineCurrent = {
                    bg = "#e6e1cf",
                    fg = "#000000",
                },
                MiniTablineHidden = {
                    bg = "#000000",
                    fg = "#e6e1cf",
                },
            },
        })
        vim.cmd.colorscheme("ayu-dark")
    end,
}
