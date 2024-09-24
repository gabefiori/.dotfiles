local opt = vim.opt

vim.cmd.colorscheme("lunaperche")
vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]
vim.cmd [[highlight NonText guibg=NONE ctermbg=NONE]]
vim.cmd [[highlight LineNr guibg=NONE ctermbg=NONE]]

-- vim.cmd.colorscheme("retrobox")

opt.background = "dark"

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
