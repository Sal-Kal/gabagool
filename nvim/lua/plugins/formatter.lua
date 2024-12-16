return {
    "stevearc/conform.nvim",
    dependencies = {
        "NMAC427/guess-indent.nvim",
    },
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        local conform = require("conform")
        local guess_indent = require("guess-indent")
        -- Conform configurations
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
        vim.o.formatexpr = "v:lua.require'conform'.format_expr()"

        -- Guess indent configuration
        guess_indent.setup({
            auto_cmd = true,
            filetype_exclude = {
                "netrw",
                "tutor",
            },
            buftype_exclude = {
                "help",
                "nofile",
                "terminal",
                "prompt",
            },
            on_tab_options = {
                ["expandtab"] = false,
            },
            on_space_options = {
                ["expandtab"] = true,
                ["tabstop"] = "detected",
                ["softtabstop"] = "detected",
                ["shiftwidth"] = "detected",
            },
        })
    end,
}
