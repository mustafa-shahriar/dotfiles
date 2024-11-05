function TmuxNavigateRight()
    local args = 'select-pane -t :.+'
    local ok = pcall(vim.fn.system, 'tmux ' .. args)
    if ok and vim.g.tmux_navigator_preserve_zoom then
        vim.cmd 'silent TmuxNavigatePrevious'
    end
end

vim.api.nvim_set_keymap('n', '<C-w>l', ':lua TmuxNavigateRight()<CR>', { noremap = true, silent = true })
