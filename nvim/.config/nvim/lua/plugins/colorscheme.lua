return {
    -- {
    --     "rebelot/kanagawa.nvim",
    --     config = function()
    --         require("kanagawa").setup({
    --             compile = false,   -- enable compiling the colorscheme
    --             undercurl = true, -- enable undercurls
    --             commentStyle = { italic = false },
    --             functionStyle = {},
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
    --                             bg_gutter = "none"
    --                         }
    --                     }
    --                 },
    --             },
    --             overrides = function(colors) -- add/modify highlights
    --                 return {}
    --             end,
    --             theme = "dragon",    -- Load "wave" theme when "background" option is not set
    --             background = {       -- map the value of "background" option to a theme
    --                 dark = "wave", -- try "dragon" !
    --                 light = "lotus"
    --             },
    --         })
    --
    --         vim.cmd.colorscheme("kanagawa")
    --     end
    -- },
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
    -- {
    --     "tjdevries/colorbuddy.nvim",
    --     config = function()
    --         vim.cmd.colorscheme("colorbuddy")
    --     end
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         require("tokyonight").setup({
    --             style = "night",
    --             styles = {
    --                 comments = { italic = false },
    --                 keywords = { italic = false },
    --                 functions = { bold = true },
    --             },
    --         })
    --
    --         vim.cmd.colorscheme("tokyonight")
    --     end
    -- },
    -- {
    --     "EdenEast/nightfox.nvim",
    --     config = function()
    --         require("nightfox").setup({
    --             options = {
    --                 inverse = { -- Inverse highlight for different types
    --                     match_paren = true,
    --                     visual = false,
    --                     search = true,
    --                 },
    --             }
    --         })
    --
    --         vim.cmd.colorscheme("carbonfox")
    --     end
    -- },
}
