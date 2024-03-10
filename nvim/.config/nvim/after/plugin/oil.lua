require("oil").setup {
  view_options = {
    show_hidden = true,
  },
}

vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
