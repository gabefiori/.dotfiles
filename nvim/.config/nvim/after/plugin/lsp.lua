vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        local opts = { buffer = ev.buf }

        vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<space>fm", vim.lsp.buf.format, opts)

        -- if vim.lsp.inlay_hint then
        --     vim.lsp.inlay_hint.enable(opts.buffer, true)
        -- end
    end,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

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
        end
    },
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = {
        { name = "path" },
        { name = "nvim_lsp" },
        { name = " luasnip" }
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
})

vim.diagnostic.config({
    virtual_text = true,
})
