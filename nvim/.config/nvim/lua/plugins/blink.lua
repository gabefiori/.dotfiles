return {
    'saghen/blink.cmp',
    version = '*',
    opts = {
        keymap = { preset = 'default' },
        completion = {
            menu = {
                auto_show = false,
                draw = {
                    columns = { { "label", "label_description", gap = 1 }, { "kind" } }
                }
            }
        },
        sources = { default = { 'lsp', 'path', 'buffer' } },
        cmdline = { enabled = false },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" }
}
