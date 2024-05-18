local runCode = function()
  local buff_name = vim.fn.bufname '%'
  local result = {}

  for match in buff_name:gmatch '[^.]+' do
    table.insert(result, match)
  end

  local lang = result[2]
  local commands = {
    java = 'java ' .. buff_name,
    go = 'go run ' .. buff_name,
    py = 'python3 ' .. buff_name,
    js = 'node ' .. buff_name,
    ts = 'bun ' .. buff_name,
    lua = 'lua ' .. buff_name,
    rs = 'cargo run',
    zig = 'zig run ' .. buff_name,
  }

  if commands[lang] then
    vim.cmd 'ToggleTerm'
    vim.defer_fn(function()
      local enter = vim.api.nvim_replace_termcodes('<CR>', true, false, true)
      vim.fn.feedkeys(commands[lang] .. enter)
    end, 1)
  else
    print 'Language not recognize'
  end
end

vim.keymap.set('n', '<leader>r', runCode, { noremap = true, silent = true })
