local function get_lsp_completion_context(completion)
    local ok, source_name = pcall(function()
        return vim.lsp.get_client_by_id(completion.client_id).name
    end)
    if not ok then
        return nil
    end

    if source_name == "ts_ls" then
        return completion.detail
    elseif source_name == "pyright" and completion.labelDetails ~= nil then
        return completion.labelDetails.description
    elseif completion.labelDetails and completion.labelDetails.detail then
        return completion.labelDetails.detail or ""
    elseif completion.labelDetails and completion.labelDetails.description then
        return completion.labelDetails.description or ""
    end
end

return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "enter",
            ["<Right>"] = { "select_and_accept" },
            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
        },
        appearance = {
            nerd_font_variant = "mono",
        },
        -- (Default) Only show the documentation popup when manually triggered
        completion = {
            menu = {
                border = "rounded",
                draw = {
                    padding = { 1, 1 },
                    columns = {
                        { "kind_icon", "label", gap = 1 },
                        { "label_description" },
                    },
                    components = {
                        label_description = {
                            text = function(ctx)
                                return get_lsp_completion_context(ctx.item)
                            end,
                            highlight = "BlinkCmpLabelDescription",
                        },
                    },
                },
            },
            documentation = { auto_show = false, window = { border = "rounded" } },
        },
        signature = { enabled = true, window = { border = "rounded" } },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
