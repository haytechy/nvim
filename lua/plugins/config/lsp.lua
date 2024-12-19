local capabilities = require('blink.cmp').get_lsp_capabilities()
require('lspconfig').pyright.setup{}
require('lspconfig').lua_ls.setup{
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    'vim'
                },
            },
        }
    },
}

