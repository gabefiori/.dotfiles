local opt = vim.opt

-- Highlight yank
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('HighlightYank', {}),
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.guicursor = ''

opt.smartcase = true
opt.ignorecase = true

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

opt.swapfile = false

opt.incsearch = true
opt.hlsearch = true

opt.splitright = true
opt.splitbelow = true

opt.inccommand = "split"

opt.formatoptions:remove "o"

-- Undo
opt.shada = { "'10", "<0", "s10", "h" }
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.undolevels = 500
