return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    vim.keymap.set('n', '<leader>e', '<cmd>TroubleToggle<cr>', { silent = true, noremap = true })
  end,
}
