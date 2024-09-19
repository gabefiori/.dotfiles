return {
    {
        "hrsh7th/nvim-cmp",
        lazy = false,
        priority = 100,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "onsails/lspkind.nvim",
        },

        config = function()
            vim.opt.completeopt = { "menu", "menuone", "noselect" }
            vim.opt.shortmess:append "c"

            local cmp = require "cmp"

            cmp.setup {
                sources = {
                    { name = "nvim_lsp", keyword_length = 4 },
                    { name = "buffer",   keyword_length = 4 },
                    { name = "path" },
                },

                mapping = {
                    ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
                    ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
                    ["<C-y>"] = cmp.mapping(
                        cmp.mapping.confirm {
                            behavior = cmp.ConfirmBehavior.Insert,
                            select = true,
                        },
                        { "i", "c" }
                    ),
                },

                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
            }
        end,
    },
}
