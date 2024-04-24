require('v9.options')
require('v9.keymaps')
require('v9.lazy')
require('v9.colorscheme')
require('v9.runcode')

--------------------------------
-- Function to navigate to the Tmux pane on the right
function TmuxNavigateRight()
    local args = 'select-pane -t :.+'
    local ok = pcall(vim.fn.system, 'tmux ' .. args)
    if ok and vim.g.tmux_navigator_preserve_zoom then
        vim.cmd('silent TmuxNavigatePrevious')
    end
end

vim.api.nvim_set_keymap('n', '<C-w>l', ':lua TmuxNavigateRight()<CR>', { noremap = true, silent = true })
--------------------------------

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_command('au VimEnter * set mouse=a')
