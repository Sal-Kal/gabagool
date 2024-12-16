require("configs")
require("keymaps")
require("options")

-- Auto Commands
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Auto command to format using inbuilt lsp formatter.

-- vim.api.nvim_create_autocmd("LspAttach", {
--     callback = function(args)
--         local client = vim.lsp.get_client_by_id(args.data.client_id)
--         if not client then
--             return
--         end
--         if client.supports_method("textDocument/formatting") then
--             print("lsp client supports formatting")
--             vim.api.nvim_create_autocmd("BufWritePre", {
--                 buffer = args.buf,
--                 callback = function()
--                     vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
--                 end,
--             })
--         end
--     end,
-- })
