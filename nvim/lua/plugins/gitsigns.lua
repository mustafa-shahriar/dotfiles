return {
    'lewis6991/gitsigns.nvim',
--    event = { 'BufReadPre', 'BufNewFile' },
--    config = function ()
--        local status_ok, gitsigns = pcall(require, 'gitsigns')
--
--        if not status_ok then
--            return
--        end
--
--        gitsigns.setup({})
--    end
    opts = {
        signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },}
    },
}
