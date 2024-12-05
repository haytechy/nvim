local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

local lsp_attach = function(client, bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false
    })
end

lsp_zero.extend_lspconfig({
    lsp_attach = lsp_attach,
})

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({}),
})

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'pyright', "clangd" },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        lua_ls = function()
            require('lspconfig').lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {
                                'vim'
                            },
                        },
                    }
                },
            })
        end,

    }
})
