return {
    -- "Shatur/neovim-ayu",
    "ayu-theme/ayu-vim",
    config = function()
        vim.cmd('let ayucolor="dark"')
        vim.cmd("colorscheme ayu")
        vim.api.nvim_set_hl(0, "TabLine", {
            fg = "#ffffff",
            bg = "#000000",
        })
        vim.api.nvim_set_hl(0, "TabLineSel", {
            fg = "#000000",
            bg = "#ffffff",
        })
        vim.api.nvim_set_hl(0, "Pmenu", {
            fg = "#e6e1cf",
            bg = "#0f1419",
        })
        vim.api.nvim_set_hl(0, "PmenuSel", {
            bg = "#e6e1cf",
            fg = "#0f1419",
        })
    end,
}
