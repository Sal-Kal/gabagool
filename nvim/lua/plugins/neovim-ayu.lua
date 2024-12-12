return {
    "Shatur/neovim-ayu",
    config = function()
        require("ayu").setup({
            mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        })
        require("ayu").colorscheme()
    end,
}
