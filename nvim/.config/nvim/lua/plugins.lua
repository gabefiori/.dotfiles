require('lazy').setup({
    -- Languages
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    -- Tressiter
    { 'nvim-treesitter/nvim-treesitter',  lazy = false,   build = ':TSUpdate' },
    'nvim-treesitter/nvim-treesitter-context',

    -- Telescope
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-telescope/telescope.nvim',

    -- Harpoon
    'ThePrimeagen/harpoon',

    -- Comments
    'b3nj5m1n/kommentary',

    -- Git
    'TimUntersberger/neogit',
    'lewis6991/gitsigns.nvim',

    -- Visual
    { 'sainnhe/gruvbox-material',                 lazy = false },
    'kyazdani42/nvim-web-devicons',
    'hoob3rt/lualine.nvim',
    'folke/trouble.nvim',
    'folke/todo-comments.nvim',

    -- Copilot
    -- 'github/copilot.vim',
})
