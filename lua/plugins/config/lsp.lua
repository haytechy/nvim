local capabilities = require('blink.cmp').get_lsp_capabilities()
local servers = { "pyright", "clangd"}
for _, server in pairs(servers) do
    require('lspconfig')[server].setup{capabilities = capabilities}
end
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

