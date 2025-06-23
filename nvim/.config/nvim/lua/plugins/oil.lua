return {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {
        columns = {
            -- "icon",
            "permissions",
            "size",
            "mtime",
        },
        view_options = { show_hidden = true },
        keymaps = {
          ["<C-h>"] = false,
          ["<C-l>"] = false,
        },
    }
}
