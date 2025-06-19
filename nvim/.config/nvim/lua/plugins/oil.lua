return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {
        columns = {
            "icon",
            -- "permissions",
            -- "size",
            -- "mtime",
        },
        view_options = { show_hidden = true },
        keymaps = {
          ["<C-h>"] = false,
          ["<C-l>"] = false,
        },
    }
}
