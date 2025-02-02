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
            local custom_settings = {}
            local set = vim.keymap.set

            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = { },
                handlers = {
                    function(server_name)
                        local server = custom_settings[server_name] or {}
                        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                        require('lspconfig')[server_name].setup(server)
                    end,
                },
            })

            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"

                    local builtin = require "fzf-lua"
                    set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
                    set("n", "gr", builtin.lsp_references, { buffer = 0 })
                    set("n", "<space>dd", builtin.diagnostics_workspace, { buffer = 0 })
                    set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
                    set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
                    set("n", "K", vim.lsp.buf.hover, { buffer = 0 })

                    set("n", "<space>rn", vim.lsp.buf.rename, { buffer = 0 })
                    set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })
                    set("n", "<space>e", vim.diagnostic.open_float, { buffer = 0 })
                    set("i", "<C-h>", vim.lsp.buf.signature_help, { buffer = 0 })
                    set("n", "<space>fm", vim.lsp.buf.format, { buffer = 0 })
                end,
            })

            set('n', 'gl', function()
                local config = vim.diagnostic.config() or {}
                if config.virtual_text then
                    vim.diagnostic.config { virtual_text = false, virtual_lines = true }
                else
                    vim.diagnostic.config { virtual_text = true, virtual_lines = false }
                end
            end, { desc = 'Toggle diagnostic virtual_lines' })

            vim.diagnostic.config { virtual_text = true, virtual_lines = false }

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
