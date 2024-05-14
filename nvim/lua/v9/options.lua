local set = vim.opt

vim.g.maplocalleader = ' '
vim.g.mapleader = ' '
set.pumheight = 10
set.undodir = os.getenv 'HOME' .. '/.vim/undodir'
set.updatetime = 250
set.timeoutlen = 300
set.undofile = true
set.breakindent = true
set.showmode = false
set.cursorline = true
set.scrolloff = 6
set.number = true
set.backspace = '2'
set.showcmd = true
set.laststatus = 2
set.autowrite = true
set.autoread = true
set.cursorline = true
set.cursorlineopt = 'number'
set.relativenumber = true
set.wrap = true
set.ignorecase = true
set.smartcase = true
set.termguicolors = true
set.autoindent = true
set.smartindent = true
set.softtabstop = 4
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.shiftround = true
set.formatoptions:remove { 'c', 'r', 'o' }
set.mousemoveevent = true
set.clipboard = 'unnamedplus'
--set.winbar = " %{%v:lua.vim.fn.expand('%F')%}  %{%v:lua.require'nvim-navic'.get_location()%}"

-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = ' '
-- vim.g.have_nerd_font = false
-- vim.opt.number = true
-- vim.opt.mouse = 'a'
-- vim.opt.showmode = false
-- vim.softtabstop = 4
-- vim.tabstop = 4
-- vim.shiftwidth = 4
-- vim.opt.clipboard = 'unnamedplus'
-- vim.opt.relativenumber = true
-- vim.opt.breakindent = true
-- vim.opt.undofile = true
-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true
-- vim.opt.signcolumn = 'yes'
-- --vim.opt.updatetime = 250
-- --vim.opt.timeoutlen = 300
-- vim.opt.splitright = true
-- vim.opt.splitbelow = true
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- vim.opt.inccommand = 'split'
-- vim.opt.cursorline = true
-- vim.opt.scrolloff = 5
-- vim.opt.hlsearch = true
