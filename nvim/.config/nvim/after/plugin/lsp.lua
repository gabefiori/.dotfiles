local lsp = require('lsp-zero')
lsp.preset("recommended")
lsp.nvim_workspace()

lsp.setup_servers = ({ 'gopls', 'pyright', 'tsserver', 'intelephense', 'html', 'cssls', 'clangd', 'svelte' })

local cmp = require('cmp')
local _ = require('lsp-zero').cmp_action()

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>fm', vim.lsp.buf.format, opts)

    -- Silent
    opts.silent = true
    vim.keymap.set("n", "gr", "<cmd>TroubleToggle lsp_references<cr>", opts)
end

lsp.on_attach(on_attach)

require 'lspconfig'.rust_analyzer.setup {
    on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {
            checkOnSave = {
                command = "clippy"
            },
        }
    }
}


lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
