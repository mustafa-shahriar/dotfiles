capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
local lspconfig = require("lspconfig")


-- lspconfig.templ.setup {
--     cmd = { 'templ', 'server', '--stdio' }, -- Command to start the server
--     on_attach = on_attach,
--     capabilities = capabilities,
-- }

lspconfig.tailwindcss.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "templ", "astro", "javascript", "typescript", "react", "javascriptreact", "typescriptreact" },
    init_options = { userLanguages = { templ = "html" } },
})

lspconfig.html.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "html", "templ" },
})

-- lspconfig.htmx.setup({
--     on_attach = on_attach,
--     capabilities = capabilities,
--     filetypes = { "html", "templ" },
-- })
