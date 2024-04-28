return {
    {
        'folke/neodev.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
        config = function()
            local neodev_status_ok, neodev = pcall(require, 'neodev')

            if not neodev_status_ok then
                return
            end

            neodev.setup()
        end,
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
        cmd = 'Mason',
        branch = 'v2.x',
        dependencies = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
            { 'SmiteshP/nvim-navic' },
        },
        config = function()
            local lsp = require('lsp-zero').preset({})

            local navic = require('nvim-navic')

            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({ buffer = bufnr })
                if client.server_capabilities.documentSymbolProvider then
                    navic.attach(client, bufnr)
                end

                vim.api.nvim_buf_set_keymap(
                    bufnr,
                    'n',
                    'ca',
                    '<cmd>lua vim.lsp.buf.code_action()<CR>',
                    { noremap = true, silent = true }
                )
                vim.api.nvim_buf_set_keymap(
                    bufnr,
                    'n',
                    '<leader>s',
                    ':Telescope lsp_document_symbols<CR>',
                    { noremap = true, silent = true }
                )

                vim.api.nvim_buf_set_keymap(
                    bufnr,
                    'n',
                    'K',
                    '<cmd>lua vim.lsp.buf.hover()<CR>',
                    { noremap = true, silent = true }
                )

                vim.api.nvim_buf_set_keymap(
                    bufnr,
                    'n',
                    '<leader>gd',
                    '<cmd>require("telescope.builtin").lsp_definitions()<CR>',
                    { noremap = true, silent = true }
                )

                vim.api.nvim_buf_set_keymap(
                    bufnr,
                    'n',
                    'gr',
                    '<cmd>lua require("telescope.builtin").lsp_references()<CR>',
                    { noremap = true, silent = true }
                )

                vim.api.nvim_buf_set_keymap(
                    bufnr,
                    'n',
                    '<leader>D',
                    '<cmd>lua require("telescope.builtin").lsp_type_definitions()<CR>',
                    { noremap = true, silent = true }
                )

                vim.api.nvim_buf_set_keymap(
                    bufnr,
                    'n',
                    'rn',
                    '<cmd>lua vim.lsp.buf.rename()<CR>',
                    { noremap = true, silent = true }
                )
            end)

            require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

            lsp.ensure_installed({

                'pyright',
                'lua_ls',
                'tsserver',
                'gopls',
                'jdtls',
                'tailwindcss',
                'docker_compose_language_service',
                'dockerls',
                'html'
            })

            lsp.setup()

            local cmp = require('cmp')
            -- local cmp_action = require('lsp-zero').cmp_action()

            require('luasnip.loaders.from_vscode').lazy_load()

            cmp.setup({
                preselect = cmp.PreselectMode.None,
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'path' },
                },
                mapping = {
                    ['<CR>'] = cmp.mapping.confirm({ select = false }),
                },
                -- window = {
                --     completion = cmp.config.window.bordered(),
                --     documentation = cmp.config.window.bordered(),
                -- },
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
            })

            local ls = require('luasnip')
            local s = ls.snippet
            local t = ls.text_node
            local i = ls.insert_node

            ls.add_snippets('go', {
                ls.parser.parse_snippet('iferr', 'if err != nil {\n  return nil\n}'),
            })
            ls.add_snippets('javascript', {
                ls.parser.parse_snippet(
                    'rc',
                    "function ${1:name}() {\n    return(\n        '${1:name}'\n    )\n}\nexport default ${1:name}"
                ),
            })
            ls.add_snippets('typescript', {
                ls.parser.parse_snippet(
                    'rc',
                    "function ${1:name}() {\n    return(\n        '${1:name}'\n    )\n}\nexport default ${1:name}"
                ),
            })
            ls.add_snippets('java', {
                ls.parser.parse_snippet(
                    'pc',
                    'public class ${1:name}{\n    public static void main(String[] args){\n    }\n}'
                ),
            })
        end,
    },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'rafamadriz/friendly-snippets' },
    -- {
    --     'dgagn/diagflow.nvim',
    --     opts = {
    --         -- placement = 'inline',
    --         scope = 'line',
    --         padding_right = 5
    --     }
    -- }
}
