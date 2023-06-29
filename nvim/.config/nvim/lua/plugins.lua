require('lazy').setup({
    -- Languages
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },
    { 'nvim-treesitter/nvim-treesitter',          lazy = false,  build = ':TSUpdate' },
    'nvim-treesitter/nvim-treesitter-context',
    'folke/trouble.nvim',

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
    { 'sainnhe/gruvbox-material', lazy = false },
    'kyazdani42/nvim-web-devicons',
    -- 'hoob3rt/lualine.nvim',
    'folke/todo-comments.nvim',

    -- Copilot
    -- 'github/copilot.vim',
})
