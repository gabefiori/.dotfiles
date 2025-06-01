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
        cmdline = {
            enabled = false
        },
        sources = {
            default = { 'lsp', 'path', 'buffer' },
        },
    },
    opts_extend = { "sources.default" }
}
