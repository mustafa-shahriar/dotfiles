-- return {
--   { -- Add indentation guides even on blank lines
--     'lukas-reineke/indent-blankline.nvim',
--     -- Enable `lukas-reineke/indent-blankline.nvim`
--     -- See `:help ibl`
--     main = 'ibl',
--     opts = {},
--   },
-- }

local highlight = {
  'CursorColumn',
  'Whitespace',
}
return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    -- never enable this god forsaken option again...
    --vim.opt.list = true
    vim.cmd [[highlight IndentBlanklineIndent1 guifg=#515151 gui=nocombine]]

    require('indent_blankline').setup {
      indent = { highlight = highlight, char = '' },
      whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
    }
  end,
}
