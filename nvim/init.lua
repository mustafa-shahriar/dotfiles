require 'config.options'
require 'config.lazy'
require 'config.runcode'
require 'config.textyank'
require 'config.indent'
require 'config.keymaps'
require 'config.tmux'

require('lspconfig').denols.setup {
    on_attach = on_attach,
    root_dir = require('lspconfig').util.root_pattern('deno.json', 'deno.lock'),
}

require('lspconfig').ts_ls.setup {
    on_attach = on_attach,
    root_dir = require('lspconfig').util.root_pattern 'package.json',
    single_file_support = false,
}
