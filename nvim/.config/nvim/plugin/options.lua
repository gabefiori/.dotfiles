local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

--  Netrw
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_browse_split = 0

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

-- Theme
opt.termguicolors = true
g.background = "dark"

g.gruvbox_material_visual = "grey background"
g.gruvbox_material_background = "hard"
g.gruvbox_material_ui_contrast = "high"
g.gruvbox_material_foreground = "original"
g.gruvbox_material_enable_italic = 0
g.gruvbox_material_enable_bold = 0
g.gruvbox_material_disable_italic_comment = 1
g.gruvbox_material_diagnostic_virtual_text = "colored"
g.gruvbox_material_better_performance = 1

cmd("colorscheme gruvbox-material")

-- Main Configs
opt.wildignore = { "**/node_modules/*", "**/.git/*", "*.lock" }

opt.syntax = "off"

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
opt.scrolloff = 8

opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.hidden = true

opt.incsearch = true
opt.hlsearch = true

opt.splitright = true
opt.splitbelow = true

opt.updatetime = 1000

-- Undo
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.undolevels = 500

opt.fillchars = { eob = "~" }

-- Cool floating window popup menu for completion on command line
opt.pumblend = 15
opt.wildmode = "longest:full"
opt.wildoptions = "pum"
