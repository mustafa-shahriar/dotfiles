local opts = { noremap = true, silent = true }
local keymap = vim.keymap
local global = vim.g
global.mapleader = ' '
global.maplocalleader = ' '

--keymap.set('n', ',', ':cprev<CR>', opts)
--keymap.set('n', '.', ':cnext<CR>', opts)
keymap.set('n', '<Esc>', ':if &hlsearch | nohlsearch | endif<CR>', opts)

--vim.api.nvim_set_keymap('n', '<C-L>', ':lua TmuxNavigateRight()<CR>', opts)
-- split keymaps
keymap.set('n', '<leader>v', ':vsplit<CR>', opts)
keymap.set('t', '<C-[>', '<C-\\><C-n>', opts)

-- Telescope keymaps
keymap.set('n', '<C-p>', ':Telescope find_files<CR>', opts)
keymap.set('n', '<leader>ff', ':Telescope git_files<CR>', opts)
keymap.set('n', '<leader><leader>', ':Telescope buffers<CR>', opts)
--keymap.set('n', '<leader>r', ':Telescope oldfiles<CR>', opts)
keymap.set('n', '<leader>gr', ':Telescope live_grep<CR>', opts)
keymap.set('n', '<leader>fj', ':Telescope help_tags<CR>', opts)
keymap.set('n', '<leader>fz', ':Telescope current_buffer_fuzzy_find<CR>', opts)
keymap.set('n', '<leader>h', ':Telescope help_tags<CR>', opts)

keymap.set('i', '<C-j>', '<Down>', opts)
--keymap.set('i', '<C-k>', '<Up>', opts)
keymap.set('i', '<C-l>', '<Right>', opts)
--keymap.set('i', '<C-h>', '<Left>', opts)
keymap.set('i', '<C-k>', '<End>', opts) -- Map CTRL + k to go to the end of line in insert mode
--keymap.set('n', '<leader>e', vim.cmd.Ex)

-- make CTRL + C behave exactly the same as ESC
keymap.set('i', '<C-c>', '<ESC>', opts)

-- delete one word in insert mode (note that <C-h> sends the same ASCII escape sequence as <C-BS>)
keymap.set('i', '<C-h>', '<C-w>', opts)

-- remap ^ and $ to H and L, respectively
keymap.set('n', 'H', '^', opts)
keymap.set('n', 'L', '$', opts)

-- open up lazy.nvim UI
keymap.set('n', '<leader>l', ':Lazy<CR>', opts)

-- toggle undotree
keymap.set('n', '<C-u>', ':UndotreeToggle<CR>', opts)

-- toggle nvim-tree [commented to reduce the use of filetree]
-- keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', opts)

-- unbind <C-d> for now
keymap.set('n', '<C-d>', '<nop>', opts)

-- close the current buffer
keymap.set('n', '<C-x>', ':bd<CR>', opts)

-- quickly switch between buffers
keymap.set('n', '<', ':bp<CR>', opts)
keymap.set('n', '>', ':bn<CR>', opts)

-- quickly switch between windows
keymap.set('n', '<C-l>', '<C-w>l', opts)
keymap.set('n', '<C-h>', '<C-w>h', opts)

-- write to all buffers
keymap.set('n', '<leader>w', ':wa<CR>', opts)

-- quit a single buffers
--keymap.set('n', '<leader>q', ':qa<CR>', opts)
keymap.set('n', '<leader>q', ':bd<CR>', opts)

-- force quit all buffers
keymap.set('n', '<leader>fq', ':qa!<CR>', opts)

-- clear search term when centering the cursor
keymap.set('n', 'zz', 'zz:noh<CR>', opts)

-- toggle transparency
keymap.set('n', '<C-t>', ':TransparentToggle<CR>', opts)

-- open up Themery
keymap.set('n', '<leader>t', ':Themery<CR>', opts)

-- replace current word
keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file an executable
keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', opts)

-- keep cursor at front when appending lines below
keymap.set('n', 'J', 'mzJ`z', opts)

-- select entire file with CTRL + A
keymap.set('n', '<C-a>', 'ggVG', opts)

-- indent and outdent lines quickly
keymap.set('n', '<TAB>', '>>', opts)
keymap.set('n', '<S-TAB>', '<<', opts)

-- search movement keeps cursor in middle
keymap.set('n', 'n', 'nzzzv', opts)
keymap.set('n', 'N', 'Nzzzv', opts)

-- vertical movement keeps cursor in middle
keymap.set('n', '<C-j>', '<C-d>zz', opts)
keymap.set('n', '<C-k>', '<C-u>zz', opts)

-- creates a new line below the cursor and goes back into normal mode
keymap.set('n', '<CR>', 'o<Esc>', opts)

-- creates a new line above the cursor and goes back into normal mode
keymap.set('n', '<A-CR>', 'O<Esc>', opts)

-- quick resizing of buffers
keymap.set('n', '<C-up>', ':resize -2<cr>', opts)
keymap.set('n', '<C-down>', ':resize +2<cr>', opts)
keymap.set('n', '<C-left>', ':vertical resize -2<cr>', opts)
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- copy into system clipboard with CTRL + C
keymap.set('v', '<C-c>', '"+y', opts)

-- copy into host system clipboard with <leader>y
keymap.set('v', '<leader>y', '"*y', opts)

-- prevent x from copying over Vim clipboard
keymap.set('n', 'x', '"_x', opts)

-- indent and outdent lines in visual mode
keymap.set('v', '<TAB>', '<S->>gv', opts)
keymap.set('v', '<S-TAB>', '<S-<>gv', opts)

-- the greatest remap ever (Primeagen)
keymap.set('v', '<leader>p', '"_dP', opts)

-- move lines around
keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- vertical movement keeps cursor in middle (visual mode)
keymap.set('v', '<C-j>', '<C-d>zz', opts)
keymap.set('v', '<C-k>', '<C-u>zz', opts)

-- prevent incrementing numbers in file (this is actually horrible)
keymap.set('v', '<C-a>', 'ggVG', opts)

keymap.set('v', '<C-d>', '"+ygvd', opts)
