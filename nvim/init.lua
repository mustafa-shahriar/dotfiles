require('v9.options')
require('v9.keymaps')
require('v9.lazy')
require('v9.colorscheme')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.cmd([[autocmd FileType yaml setlocal indentexpr=]])
vim.cmd([[autocmd FileType yml setlocal indentexpr=]])
vim.cmd([[autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.lua,*.html PrettierAsync]])

vim.api.nvim_command("au VimEnter * set mouse=a")
vim.api.nvim_command("au VimEnter * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50")

vim.api.nvim_set_keymap('n', '<leader>jc', '<cmd>!javac %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>jr', '<cmd>!java %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>goc', '<cmd>!go build %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gor', '<cmd>!go run %<CR>', { noremap = true, silent = true })
