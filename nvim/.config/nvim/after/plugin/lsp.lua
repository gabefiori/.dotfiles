local lsp = require('lsp-zero')
lsp.preset("recommended")
lsp.nvim_workspace()

lsp.setup_servers = ({ 'gopls', 'pyright', 'tsserver', 'intelephense', 'html', 'cssls', 'clangd', 'svelte' })

local cmp = require('cmp')
local _ = require('lsp-zero').cmp_action()

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'buffer',  keyword_length = 3 },
        { name = 'luasnip', keyword_length = 2 },
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>fm', vim.lsp.buf.format, opts)
end)


lsp.setup()
