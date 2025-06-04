local capabilities = require('blink.cmp').get_lsp_capabilities()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'pyright', "clangd" },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({capabilities = capabilities})
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
    },
})
