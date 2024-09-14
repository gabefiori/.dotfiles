return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",
                    "c",
                    "zig",
                    "comment",
                    "dockerfile",
                    "go",
                    "javascript",
                    "jsdoc",
                    "lua",
                    "make",
                    "markdown",
                    "php",
                    "rust",
                    "toml",
                    "typescript",
                    "vim",
                },
                auto_install = true,
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            })
        end
    }
}
