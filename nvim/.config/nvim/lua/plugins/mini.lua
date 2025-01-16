return {
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.ai").setup()
            require("mini.surround").setup()
            require("mini.comment").setup()

            require("mini.diff").setup({
                view = {
                    style = 'sign',
                    signs = { add = '┃', change = '┃', delete = '┃' },
                },
            })
        end,
    },
}
