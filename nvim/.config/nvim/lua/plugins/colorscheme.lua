return {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup({
            compile = true,   
            undercurl = false, 
            commentStyle = { italic = false },
            functionStyle = { bold = false },
            keywordStyle = { italic = false, bold = true },
            statementStyle = { bold = false },
            typeStyle = { bold = false },
            transparent = false,   
            dimInactive = false,   
            terminalColors = true, 
            colors = {             
                palette = {},
                theme = { 
                    all = { 
                        ui = { bg_gutter = "none",  },
                        syn = {
                            variable   = "none",
                            constant   = "none",
                            number     = "#98BB6C",
                            identifier = "none",
                            parameter  = "none",
                            fun        = "none",
                            statement  = "none",
                            preproc    = "#7FB4CA",
                            string     = "#E6C384",
                            -- regex      = "none",
                            punct      = "none",
                            operator   = "none",
                            keyword    = "none",
                            type       = "#7FB4CA",
                            comment    = "#A3D4D5",
                            special1   = "#7FB4CA",
                            special2   = "none",
                            special3   = "none",
                        },
                    },
                },
            },
            theme = "wave",    
            background = {     
                dark = "wave", 
                light = "lotus"
            },
            overrides = function(colors)
                local theme = colors.theme
                return {
                    Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
                    PmenuSel = { bg = theme.ui.bg_p2 },
                    PmenuSbar = { bg = theme.ui.bg_m1 },
                    PmenuThumb = { bg = theme.ui.bg_p2 },

                    Boolean = { fg = "#98BB6C", bold = false },

                    NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
                    LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                    MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                }
            end,
        })
        vim.cmd.colorscheme("kanagawa")
    end
}

