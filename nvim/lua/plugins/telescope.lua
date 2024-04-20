return {
    {
        'nvim-telescope/telescope.nvim',
        event = 'VimEnter',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            local status_ok, telescope = pcall(require, 'telescope')

            if not status_ok then
                return
            end
            require('telescope').setup({ defaults = { file_ignore_patterns = { "node_modules" } } })
            --            local builtin = require('telescope.builtin')
            --            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
            --            vim.keymap.set('n', '<leader>r', builtin.oldfiles, {})
            --            vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
            --            vim.keymap.set('n', '<leader>fj', builtin.help_tags, {})
            --            vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
