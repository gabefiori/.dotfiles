--------------------------------------------------------------------------
-- OPTIONS
--------------------------------------------------------------------------
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = false

vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = true
vim.opt.breakindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = 'split'
vim.opt.cursorline = false
vim.opt.scrolloff = 10
vim.opt.guicursor = ''
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.undolevels = 500

--------------------------------------------------------------------------
-- KEYMAPS
--------------------------------------------------------------------------
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>")

--------------------------------------------------------------------------
-- Autocommands
--------------------------------------------------------------------------
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

--------------------------------------------------------------------------
-- Plugins
--------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
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
                vim.keymap.set("n", "<leader>fw", fzf.grep_cword, {})
                vim.keymap.set("n", "<leader>fg", fzf.live_grep_native, {})
                vim.keymap.set("n", "<leader>fr", fzf.live_grep_resume, {})
                vim.keymap.set("v", "<leader>fg", fzf.grep_visual, {})
            end
        },



        {
            'saghen/blink.cmp',
            dependencies = 'rafamadriz/friendly-snippets',
            version = '*',
            opts = {
                keymap = { preset = 'default' },
                completion = {
                    menu = {
                        auto_show = false
                    }
                },

                appearance = {
                    use_nvim_cmp_as_default = true,
                    nerd_font_variant = 'mono'
                },
                sources = {
                    default = { 'lsp', 'path', 'snippets', 'buffer' },
                    cmdline = {},
                },
            },
            opts_extend = { "sources.default" }
        },

        {
            'stevearc/oil.nvim',
            lazy = false,
            opts = {
                columns = {},
                view_options = { show_hidden = true },
                use_default_keymaps = true,
            }
        },

        {
            "NeogitOrg/neogit",
            dependencies = {
                "nvim-lua/plenary.nvim",
                "ibhagwan/fzf-lua",
            },
            opts = {},
            config = function()
                vim.keymap.set("n", "<leader>gg", "<CMD>Neogit<CR>")
            end
        },

        {
            "echasnovski/mini.nvim",
            config = function()
                require("mini.ai").setup()
                require("mini.surround").setup()
                require("mini.comment").setup()
                require("mini.pairs").setup()

                require("mini.diff").setup({
                    view = {
                        style = 'sign',
                        signs = { add = '┃', change = '┃', delete = '┃' },
                    },
                })
            end,
        },

        {
            'nvim-treesitter/nvim-treesitter',
            build = ':TSUpdate',
            main = 'nvim-treesitter.configs',
            opts = {
                ensure_installed = { 
                    'bash',
                    'c',
                    'diff',
                    'html',
                    'lua',
                    'luadoc',
                    'markdown',
                    'markdown_inline',
                    'query',
                    'vim',
                    'vimdoc',
                    'go',
                    'zig',
                },
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { 'ruby' },
                },
                indent = { enable = true, disable = { 'ruby' } },
            },
        },

        {
            "sainnhe/gruvbox-material",
            lazy = false,
            priority = 1000,
            config = function()
                vim.g.gruvbox_material_better_performance = 1
                vim.g.gruvbox_material_background = "hard"
                vim.g.gruvbox_material_foreground = "original"
                vim.g.gruvbox_material_diagnostic_virtual_text = 1
                vim.g.gruvbox_material_enable_bold = 1
                vim.g.gruvbox_material_disable_italic_comment = 1
                vim.g.gruvbox_material_enable_italic = false
                vim.g.gruvbox_material_float_style = "dim"

                vim.cmd.colorscheme("gruvbox-material")
            end
        },

        {
            'neovim/nvim-lspconfig',
            dependencies = { 'saghen/blink.cmp' },
            opts = {
                servers = {
                    gopls = {}
                }
            },
            config = function(_, opts)
                local lspconfig = require('lspconfig')

                for server, config in pairs(opts.servers) do
                    config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                    lspconfig[server].setup(config)
                end

                vim.api.nvim_create_autocmd('LspAttach', {
                    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                    callback = function(ev)
                        vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"

                        local builtin = require "fzf-lua"
                        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
                        vim.keymap.set("n", "gr", builtin.lsp_references, { buffer = 0 })
                        vim.keymap.set("n", "<space>dd", builtin.diagnostics_workspace, { buffer = 0 })
                        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
                        vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
                        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })

                        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { buffer = 0 })
                        vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })
                        vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { buffer = 0 })
                        vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, { buffer = 0 })
                        vim.keymap.set("n", "<space>fm", vim.lsp.buf.format, { buffer = 0 })
                    end,
                })
            end
        }
    },

    performance = {
        cache = {
            enabled = true,
        },
        change_detection = {
            enabled = false,
            notify = false,
        },
        reset_packpath = true,
        rtp = {
            reset = true,
            paths = {},
            disabled_plugins = {
                "gzip",
                "matchit",
                "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})