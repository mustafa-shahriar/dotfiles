local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },
    {
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
    },
    {
        'folke/tokyonight.nvim',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        init = function()
            vim.cmd.colorscheme 'tokyonight-night'

            -- You can configure highlights by doing something like:
            vim.cmd.hi 'Comment gui=none'
        end,
    },

    {
        'lukas-reineke/indent-blankline.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
    },

    -- Highlight todo, notes, etc in comments
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
    require 'kickstart.plugins.debug',
    --require 'kickstart.plugins.indent_line',
    require 'kickstart.plugins.lint',
    -- require 'kickstart.plugins.autopairs',
    --require 'kickstart.plugins.neo-tree',
    require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
    -- require 'kickstart.plugins.trouble',
    { import = 'custom.plugins' },
}
