vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Languages
  use 'neovim/nvim-lspconfig'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'folke/trouble.nvim'

  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope.nvim' 

  -- Comments
  use 'b3nj5m1n/kommentary'

  -- Git
  use { 'TimUntersberger/neogit', requires = { 'nvim-lua/plenary.nvim' } }
  use 'lewis6991/gitsigns.nvim'

  -- Visual
  use 'sainnhe/gruvbox-material'
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'

  -- Autopairs
  use 'windwp/nvim-autopairs'
end)
