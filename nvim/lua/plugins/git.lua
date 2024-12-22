return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            on_attach = function(bufnr)
                local gitsigns = require("gitsigns")

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map("n", "<leader>gj", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "<leader>gj", bang = true })
                    else
                        gitsigns.nav_hunk("next")
                    end
                end)

                map("n", "<leader>gk", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "<leader>gk", bang = true })
                    else
                        gitsigns.nav_hunk("prev")
                    end
                end)

                -- Actions
                map("n", "<leader>gu", gitsigns.reset_hunk)
                map("v", "<leader>gu", function()
                    gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end)
                map("n", "<leader>gp", gitsigns.preview_hunk)
                map("n", "<leader>gb", function()
                    gitsigns.blame_line({ full = true })
                end)
                map("n", "<leader>gt", gitsigns.toggle_current_line_blame)
                map("n", "<leader>gd", gitsigns.diffthis)
                map("n", "<leader>go", gitsigns.blame)
                -- Text object
                map({ "o", "x" }, "<leader>gs", ":<C-U>Gitsigns select_hunk<CR>")
            end,
        })
    end,
}
