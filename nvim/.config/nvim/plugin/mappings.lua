vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>gs", "<cmd>lua require('neogit').open()<CR>")

vim.keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>lua require('telescope.builtin').git_files()<CR>")
