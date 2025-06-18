return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    config = function()
        require('copilot').setup({
            suggestion = {
                enabled = true,
                auto_trigger = false,
                keymap = {
                    accept = "<C-l>",
                    next = "<C-n>",
                    prev = "<C-p>",
                },
            },
            panel = { enabled = false },
            filetypes = {
                markdown = true,
                help = true,

            },
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "BlinkCmpMenuOpen",
            callback = function()
                vim.b.copilot_suggestion_hidden = true
            end,
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "BlinkCmpMenuClose",
            callback = function()
                vim.b.copilot_suggestion_hidden = false
            end,
        })
    end
}
