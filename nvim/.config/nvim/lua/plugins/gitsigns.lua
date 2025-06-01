return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local gitsigns = require('gitsigns')

        gitsigns.setup {
            signs_staged_enable = false,
            signcolumn = true,
            current_line_blame = false,
            current_line_blame_opts = {
                delay = 200,
            },
            on_attach = function()
                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                map('n', '<leader>gb', function()
                    gitsigns.blame_line({ full = true })
                end)
            end
        }
    end
}
