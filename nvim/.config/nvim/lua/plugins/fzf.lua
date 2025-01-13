return
{
    "ibhagwan/fzf-lua",
    config = function()
        local fzf = require("fzf-lua")
        fzf.setup({
            { "max-perf" },
            winopts = {
                border = "none",
            },
        })

        vim.keymap.set("n", "<leader>ff", fzf.files, {})
        vim.keymap.set("n", "<C-p>", fzf.git_files, {})
        vim.keymap.set("n", "<leader>fg", fzf.live_grep, {})
    end
}
