return {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",
    version = "v0.*",
    opts = {
        keymap = {
            preset = "enter",
            ["<Right>"] = { "select_and_accept" },
            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
        signature = { enabled = true, window = { border = "rounded" } },
        sources = {
            cmdline = {},
        },
        completion = {
            ghost_text = {
                enabled = true,
            },
            menu = {
                border = "rounded",
                draw = {
                    columns = {
                        { "label", "label_description", gap = 2 },
                        { "kind_icon", "kind" },
                    },
                },
            },
            documentation = { window = { border = "rounded" } },
        },
    },
}
