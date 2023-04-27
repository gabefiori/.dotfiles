local cmd = vim.cmd 
local opt = vim.opt
local g = vim.g

--  Netrw
-- g.netrw_banner=0
-- g.netrw_liststyle=3
-- netrw_browse_split = 0
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Highlight on yank
local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'HighlightedyankRegion', -- gruvbox_material_visual color
            -- higroup="IncSearch",            -- default
            on_visual = true,
            timeout = 60,
        })
    end,
})

-- Theme
opt.termguicolors = true
g.background = 'dark'
g.gruvbox_material_visual = 'grey background'
g.gruvbox_material_background = 'medium'
g.gruvbox_material_foreground = 'original'
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_enable_bold = 1
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
opt.guicursor = ''

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.scrolloff= 8

opt.smartindent = true

opt.swapfile = false
opt.backup = false

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

opt.splitright = true
opt.splitbelow = true

opt.updatetime = 50

opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append "c"
