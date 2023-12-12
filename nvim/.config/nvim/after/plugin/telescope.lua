local telescope = require("telescope")

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
	preview = {
		filesize_limite = 5,
		treesitter = true,
	},
	pickers = {
		find_files = { theme = "ivy" },
		git_files = { theme = "ivy" },
		diagnostics = { theme = "ivy" },
		lsp_definitions = { theme = "ivy" },
		lsp_references = { theme = "ivy" },
		live_grep = { theme = "ivy" },
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
vim.keymap.set("n", "<leader>dd", builtin.diagnostics, {})
vim.keymap.set("n", "gr", builtin.lsp_references, {})
vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
