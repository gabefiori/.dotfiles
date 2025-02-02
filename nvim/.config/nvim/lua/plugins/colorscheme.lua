return {
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
            -- vim.g.gruvbox_material_colors_override = {bg0 = '#1d2021'}

            vim.cmd.colorscheme("gruvbox-material")
        end
    },
    -- {
    --     "rebelot/kanagawa.nvim",
    --     config = function()
    --         require("kanagawa").setup({
    --             compile = true,   -- enable compiling the colorscheme
    --             undercurl = true, -- enable undercurls
    --             commentStyle = { italic = false },
    --             functionStyle = { bold = true },
    --             keywordStyle = { italic = false },
    --             statementStyle = { bold = false },
    --             typeStyle = {},
    --             transparent = false,   -- do not set background color
    --             dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
    --             terminalColors = true, -- define vim.g.terminal_color_{0,17}
    --             colors = {             -- add/modify theme and palette colors
    --                 palette = {},
    --                 theme = {
    --                     all = {
    --                         ui = {
    --                             bg_gutter = "none",
    --                         }
    --                     }
    --                 },
    --             },
    --             theme = "wave",    -- Load "wave" theme when "background" option is not set
    --             background = {     -- map the value of "background" option to a theme
    --                 dark = "wave", -- try "dragon" !
    --                 light = "lotus"
    --             },
    --
    --             overrides = function(colors)
    --                 local theme = colors.theme
    --                 return {
    --                     -- NormalFloat = { bg = "none" },
    --                     -- FloatBorder = { bg = "none" },
    --                     -- FloatTitle = { bg = "none" },
    --
    --                     -- Save an hlgroup with dark background and dimmed foreground
    --                     -- so that you can use it where your still want darker windows.
    --                     -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
    --                     NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
    --                     -- Popular plugins that open floats will link to NormalFloat by default;
    --                     -- set their background accordingly if you wish to keep them dark and borderless
    --                     LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
    --                     MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
    --                     TelescopeTitle = { fg = theme.ui.special, bold = true },
    --                     TelescopePromptNormal = { bg = theme.ui.bg_p1 },
    --                     TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
    --                     TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
    --                     TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
    --                     TelescopePreviewNormal = { bg = theme.ui.bg_dim },
    --                     TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
    --                     Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
    --                     PmenuSel = { bg = theme.ui.bg_p2 },
    --                     PmenuSbar = { bg = theme.ui.bg_m1 },
    --                     PmenuThumb = { bg = theme.ui.bg_p2 },
    --                 }
    --             end,
    --         })
    --         vim.cmd.colorscheme("kanagawa")
    --     end
    -- },
}
