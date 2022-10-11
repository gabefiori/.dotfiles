local cmd = vim.cmd 
local opt = vim.opt
local g = vim.g

--  Netrw
g.netrw_banner=0
g.netrw_liststyle=3
g.netrw_browse_split = 0

-- Theme
g.backup = 'dark'
g.gruvbox_material_background = 'medium'
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_better_performance = 1
g.gruvbox_material_enable_bold = 0
g.gruvbox_material_diagnostic_virtual_text = 1
cmd 'colorscheme gruvbox-material' 

cmd 'syntax enable' 

-- Main Configs
opt.wildignore = {'**/node_modules/*', '**/.git/*'}

opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.colorcolumn = "80"
-- opt.guicursor = ''

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.scrolloff= 8

opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.hidden = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

opt.splitright = true
opt.splitbelow = true

opt.shortmess = "c"

opt.updatetime = 50

opt.completeopt = {'menuone', 'noinsert', 'noselect'}
