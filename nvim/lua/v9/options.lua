local set = vim.opt

set.undodir = os.getenv('HOME') .. '/.vim/undodir'
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
set.formatoptions:remove({ 'c', 'r', 'o' })
set.mousemoveevent = true
--set.winbar = " %{%v:lua.vim.fn.expand('%F')%}  %{%v:lua.require'nvim-navic'.get_location()%}"
set.clipboard = 'unnamedplus'
set.list = true
set.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
