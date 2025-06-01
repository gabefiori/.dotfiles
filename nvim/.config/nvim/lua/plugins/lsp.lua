return {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    opts = {
        servers = {
            gopls = {},
            ols = {},
            zls = {},
            clangd = {},
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

        vim.diagnostic.config { virtual_text = true, virtual_lines = false }
    end
}
