return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",
                    "c",
                    "clojure",
                    "cmake",
                    "comment",
                    "cpp",
                    "css",
                    "dockerfile",
                    "elm",
                    "go",
                    "html",
                    "http",
                    "javascript",
                    "jsdoc",
                    "lua",
                    "make",
                    "markdown",
                    "php",
                    "python",
                    "regex",
                    "rust",
                    "scala",
                    "scss",
                    "toml",
                    "tsx",
                    "typescript",
                    "vim",
                    "yaml",
                },
                auto_install = true,
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context"
    }

}
