require('lazy').setup({
  -- Languages
   'neovim/nvim-lspconfig',
   {'nvim-treesitter/nvim-treesitter', lazy = false, build = ':TSUpdate'},
   'nvim-treesitter/nvim-treesitter-context',
   'folke/trouble.nvim',

  -- Completion
   'hrsh7th/cmp-nvim-lsp',
   'hrsh7th/cmp-buffer',
   'hrsh7th/cmp-path',
   'hrsh7th/cmp-cmdline',
   'hrsh7th/nvim-cmp',
   'onsails/lspkind.nvim',

  -- Snippets
   'L3MON4D3/LuaSnip',
   'saadparwaiz1/cmp_luasnip',

  -- Telescope
   'nvim-lua/popup.nvim',
   'nvim-lua/plenary.nvim',
   {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
   'nvim-telescope/telescope.nvim', 

   -- File Explorer
   'nvim-tree/nvim-tree.lua',

  -- Harpoon
   'ThePrimeagen/harpoon',

  -- Comments
   'b3nj5m1n/kommentary',

  -- Git
   'TimUntersberger/neogit',
   'lewis6991/gitsigns.nvim',

   -- Visual
   {'sainnhe/gruvbox-material', lazy = false },
   'kyazdani42/nvim-web-devicons',
   'hoob3rt/lualine.nvim',
   'folke/todo-comments.nvim';
})
