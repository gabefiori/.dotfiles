return {
    "ibhagwan/fzf-lua",
    config = function()
        local fzf = require("fzf-lua")
        fzf.setup({ "borderless" })

        vim.keymap.set("n", "<leader>ff", fzf.files, {})
        vim.keymap.set("n", "<leader>fw", fzf.grep_cword, {})
        vim.keymap.set("n", "<leader>fg", fzf.live_grep_native, {})
        vim.keymap.set("n", "<leader>fr", fzf.live_grep_resume, {})
        vim.keymap.set("v", "<leader>fg", fzf.grep_visual, {})
    end
}
