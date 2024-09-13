return {
    {
        'stevearc/oil.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup {
                view_options = {
                    show_hidden = true,
                },
                use_default_keymaps = true,
            }

            vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end
    }
}
