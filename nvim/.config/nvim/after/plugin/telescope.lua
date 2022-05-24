local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = {"node_modules"},
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
      fuzzy = false,
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  },
}

telescope.load_extension("fzf")
