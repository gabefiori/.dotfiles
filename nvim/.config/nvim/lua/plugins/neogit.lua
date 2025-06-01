return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "ibhagwan/fzf-lua",
    },
    opts = {},
    config = function()
        vim.keymap.set("n", "<leader>gg", "<CMD>Neogit<CR>")
    end
}
