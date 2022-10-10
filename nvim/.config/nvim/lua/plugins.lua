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
  use {'hrsh7th/nvim-cmp', 
    requires = {{'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'} }
  }

  -- Snippets
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

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
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'

  -- Autopairs
  use 'windwp/nvim-autopairs'
end)
