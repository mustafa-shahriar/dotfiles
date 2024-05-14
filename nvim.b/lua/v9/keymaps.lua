local option = { noremap = true, silent = true }

vim.keymap.set('i', '<C-Backspace>', '<C-w>', option)
vim.keymap.set('n', '<C-a>', 'ggVG', option)

vim.keymap.set('n', '<leader>h', ':lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>', option)
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', option)
vim.keymap.set('n', '<TAB>', '>>', option)
vim.keymap.set('n', '<S-TAB>', '<<', option)
vim.keymap.set('v', '<TAB>', '<S->>gv', option)
vim.keymap.set('v', '<S-TAB>', '<S-<>gv', option)

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', option)

vim.keymap.set('i', '<C-l>', '<Right>', option)
vim.keymap.set('i', '<C-k>', '<End>', option) -- Map CTRL + k to go to the end of line in insert mode

vim.keymap.set('n', '<leader>q', ':bd<CR>', option)
vim.keymap.set('n', '<leader>w', ':w<CR>', option)

vim.keymap.set('n', '<', ':bp<CR>', option)
vim.keymap.set('n', '>', ':bn<CR>', option)
-- vim.keymap.set('n', '<C-,', ':cprev<CR>', option)
-- vim.keymap.set('n', '<C-.>', ':cnext<CR>', option)

vim.keymap.set('n', '<C-u>', ':UndotreeToggle<CR>', option)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", option)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", option)

vim.keymap.set('n', '<C-j>', '<C-d>', option)
vim.keymap.set('n', '<C-k>', '<C-u>', option)
vim.keymap.set('v', '<C-j>', '<C-d>', option)
vim.keymap.set('v', '<C-k>', '<C-u>', option)

--nvim tree
-- vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', option)

--telescope
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', option)
vim.keymap.set('n', '<leader>ff', ':Telescope git_files<CR>', option)
vim.keymap.set('n', '<leader><leader>', ':Telescope buffers<CR>', option)
-- vim.keymap.set('n', '<leader>r', ':Telescope oldfiles<CR>', option)
vim.keymap.set('n', '<leader>gr', ':Telescope live_grep<CR>', option)
vim.keymap.set('n', '<leader>fj', ':Telescope help_tags<CR>', option)
vim.keymap.set('n', '<leader>fz', ':Telescope current_buffer_fuzzy_find<CR>', option)
vim.keymap.set('n', '<leader>t', ':Telescope colorscheme<CR>', option)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>d', ':Telescope diagnostics<CR>', { desc = 'Show diagnostic [E]rror messages' })
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<C-[>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
--vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
--vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
