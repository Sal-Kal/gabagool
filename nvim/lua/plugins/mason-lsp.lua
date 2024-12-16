return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        -- lsp for vim global variables
        {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")
        mason_lspconfig.setup({
            -- ensure install for lsp
            ensure_installed = {
                "ts_ls",
                "html",
                "cssls",
                "lua_ls",
            },
            automatic_installation = true,
        })
        mason_lspconfig.setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end,
        })
        mason_tool_installer.setup({
            -- ensute install for linters and formatters
            ensure_installed = {
                "prettier",
                "stylua",
                "eslint_d",
            },
        })
    end,
}
