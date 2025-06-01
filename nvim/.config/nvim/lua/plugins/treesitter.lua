return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = { 
            'bash',
            'fish',
            'c',
            'comment',
            'diff',
            'lua',
            'markdown',
            'vim',
            'vimdoc',
            'go',
            'zig',
            'odin',
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true},
    },
}
