return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "nvimtools/none-ls.nvim"

        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            local custom_settings = {
                rust_analyzer = {
                    settings = {
                        ["rust-analyzer"] = {
                            checkOnSave = {
                                command = "clippy",
                            },
                        },
                    }
                },
                gopls = {
                    settings = {
                        gopls = {
                            hints = {
                                assignVariableTypes = false,
                                compositeLiteralFields = true,
                                compositeLiteralTypes = true,
                                constantValues = true,
                                functionTypeParameters = true,
                                parameterNames = true,
                                rangeVariableTypes = true,
                            }
                        }
                    }
                },
                lua_ls = {
                    settings = {
                        Lua = {
                            runtime = { version = 'LuaJIT' },
                            diagnostics = { disable = { 'missing-fields' } },
                            hint = { enable = true }
                        },
                    },
                },
            }

            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls" },
                handlers = {
                    function(server_name)
                        local server = custom_settings[server_name] or {}
                        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                        require('lspconfig')[server_name].setup(server)
                    end,
                },
            })

            require("lspconfig").gleam.setup({})
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"

                    local builtin = require "fzf-lua"
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
                    vim.keymap.set("n", "gr", builtin.lsp_references, { buffer = 0 })
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

            -- Formatter
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.diagnostics.golangci_lint
                },
            })
        end
    }
}
