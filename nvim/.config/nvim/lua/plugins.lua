require("lazy").setup({
	-- Languages
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },

	-- Tressiter
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-context",

	-- Telescope
	"nvim-lua/popup.nvim",
	"nvim-lua/plenary.nvim",
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	-- File explorer
	{ "echasnovski/mini.files", version = false },

	-- Harpoon
	"ThePrimeagen/harpoon",

	-- Comments
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},

	-- Autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
	},

	-- Git
	"TimUntersberger/neogit",
	"lewis6991/gitsigns.nvim",

	-- Visual
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"kyazdani42/nvim-web-devicons",
	"hoob3rt/lualine.nvim",
	"folke/todo-comments.nvim",

	-- Tmux
	"christoomey/vim-tmux-navigator",

	-- Copilot
	"github/copilot.vim",
})
