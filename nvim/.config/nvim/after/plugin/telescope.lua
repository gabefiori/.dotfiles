local telescope = require("telescope")

telescope.setup {
    defaults = {
        file_ignore_patterns = { "node_modules" },
    },
    preview = {
        filesize_limite = 5,
        treesitter = true,
    },
    pickers = {
        buffers = {
            show_all_buffers = true,
            sort_lastused = true,
            previewer = false,
            theme = "dropdown",
            mappings = {
                i = { ["<c-d>"] = require("telescope.actions").delete_buffer, },
                n = { ["<c-d>"] = require("telescope.actions").delete_buffer, }
            }
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
        }
    },
}

telescope.load_extension("fzf")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
