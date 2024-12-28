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
    end,
}
