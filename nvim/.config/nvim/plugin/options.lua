local opt = vim.opt

opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
-- opt.colorcolumn = "80"
opt.showmode = false
-- opt.guicursor = ''

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

opt.shada = { "'10", "<0", "s10", "h" }
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.undolevels = 500

-- vim.diagnostic.config({virtual_lines=true})
