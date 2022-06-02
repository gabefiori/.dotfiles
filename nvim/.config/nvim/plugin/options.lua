local cmd = vim.cmd 
local opt = vim.opt
local g = vim.g

--  Netrw
g.netrw_banner=0
g.netrw_liststyle=3
g.netrw_browse_split = 0

-- Theme
opt.termguicolors = true
opt.background = 'dark'
g.gruvbox_bold = 0
cmd 'colorscheme gruvbox' 
cmd 'syntax enable' 

-- Main Configs
opt.wildignore = {'**/node_modules/*', '**/.git/*'}

opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.showcmd = false
opt.showmode = false
opt.ruler = false
opt.cursorline = true
opt.signcolumn = "yes"
opt.colorcolumn = "80"
-- opt.guicursor = ''

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.scrolloff= 10
opt.autoindent = true
opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.hidden = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

opt.splitright = true
opt.splitbelow = true

opt.shortmess="c"

opt.updatetime = 80

opt.completeopt = {'menuone', 'noinsert', 'noselect'}
