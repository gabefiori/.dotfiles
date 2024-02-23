require("lazy").setup({
	-- Languages
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "nvimtools/none-ls.nvim" },
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
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x", lazy = true },

	-- File explorer
	{ "echasnovski/mini.files", version = false },

	-- Harpoon
	{
		"ThePrimeagen/harpoon",
		lazy = true,
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

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
	{ "TimUntersberger/neogit", lazy = true },
	{ "lewis6991/gitsigns.nvim", lazy = true },

	-- Visual
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "kyazdani42/nvim-web-devicons", lazy = true },
	{ "hoob3rt/lualine.nvim", lazy = true },
	{ "folke/todo-comments.nvim", lazy = true },

	-- Tmux
	"christoomey/vim-tmux-navigator",

	-- Copilot
	"github/copilot.vim",
})
