return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        { "mason-org/mason.nvim", opts = {} },
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        -- LSP support for neovim conf file
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")
        mason.setup()
        mason_lspconfig.setup({
            ensure_installed = {
                -- Ensure LSP installed
                "ts_ls", -- JavaScript & TypeScript LSP
                "html", -- HTML LSP
                "cssls", -- CSS LSP
                "lua_ls", -- Lua LSP
                "pyright", -- Python LSP
            },
        })
        mason_tool_installer.setup({
            ensure_installed = {
                -- Ensure Linters installed
                "eslint_d", -- JavaScript Linter
                "pylint", -- Python Linter
                -- Ensure Formatters installed
                "prettier", -- JavaScript Formatter
                "stylua", -- Lua Formatter
                "black", -- Python Formatter
            },
        })
        -- LSP Keymaps
        vim.keymap.set("n", "<leader>dj", function()
            vim.diagnostic.jump({ count = 1, float = true })
        end)
        vim.keymap.set("n", "<leader>dk", function()
            vim.diagnostic.jump({ count = -1, float = true })
        end)
        vim.keymap.set("n", "<leader>dt", function()
            vim.diagnostic.enable(not vim.diagnostic.is_enabled())
        end)
        vim.keymap.set("n", "<leader>kc", function()
            vim.b.completion = false
            print("Completions Disabled")
        end)
        vim.keymap.set("n", "<leader>ko", function()
            vim.b.completion = true
            print("Completions Enabled")
        end)
    end,
}
