return {
    "stevearc/conform.nvim",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                markdown = { "prettier" },
                lua = { "stylua" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },
        })
        vim.keymap.set({ "n", "v" }, "<leader>ff", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = "Format files using conform" })
        vim.api.nvim_create_autocmd("InsertLeave", {
            desc = "Format after leaving insert mode",
            callback = function()
                conform.format({
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 500,
                })
            end,
        })
        vim.o.formatexpr = "v:lua.require'conform'.format_expr()"
    end,
}
