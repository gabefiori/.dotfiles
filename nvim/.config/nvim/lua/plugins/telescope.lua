return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-tree/nvim-web-devicons",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },

    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                file_ignore_patterns = { "node_modules" },
            },
            -- pickers = {
            --     find_files = { theme = "dropdown" },
            --     git_files = { theme = "dropdown" },
            --     diagnostics = { theme = "dropdown" },
            --     lsp_definitions = { theme = "dropdown" },
            --     lsp_references = { theme = "dropdown" },
            --     live_grep = { theme = "dropdown" },
            -- },
            preview = {
                filesize_limite = 5,
                treesitter = true,
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                },
            },
        })

        telescope.load_extension("fzf")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<C-p>", builtin.git_files, {})
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
   end
}
