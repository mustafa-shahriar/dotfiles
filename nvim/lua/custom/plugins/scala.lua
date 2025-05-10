local config = {
    'scalameta/nvim-metals',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    ft = { 'scala', 'sbt', 'java' },
    opts = function()
        local metals_config = require('metals').bare_config()

        -- Add capabilities for cmp-nvim-lsp (optional)
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        metals_config.capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        -- Setup keybindings in on_attach
        metals_config.on_attach = function(client, bufnr)
            local bufopts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts) -- Go to definition
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts) -- Hover documentation
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts) -- Rename symbol
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts) -- Code action
        end

        return metals_config
    end,
    config = function(self, metals_config)
        local nvim_metals_group = vim.api.nvim_create_augroup('nvim-metals', { clear = true })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = self.ft,
            callback = function()
                require('metals').initialize_or_attach(metals_config)
            end,
            group = nvim_metals_group,
        })
    end,
}

return {}
