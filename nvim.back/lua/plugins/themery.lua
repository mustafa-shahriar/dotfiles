local color_schemes_table = {
    {
        name = 'tokyonight',
        colorscheme = 'tokyonight',
    },
    {
        name = 'tokyonight-night',
        colorscheme = 'tokyonight-night',
    },
    {
        name = 'tokyonight-storm',
        colorscheme = 'tokyonight-storm',
    },
    {
        name = 'tokyonight-day',
        colorscheme = 'tokyonight-day',
    },
}
local color_schemes = vim.fn.getcompletion('', 'color')

-- Create a table of themes with each theme having 'name' and 'colorscheme' keys
for _, scheme in ipairs(color_schemes) do
    local theme = {
        name = scheme,
        colorscheme = scheme,
    }
    table.insert(color_schemes_table, theme)
end

local config = {
    'zaldih/themery.nvim',
    cmd = 'Themery',
    config = function()
        local status_ok, themery = pcall(require, 'themery')
        if not status_ok then
            return
        end

        themery.setup({
            themes = color_schemes_table,
            themeConfigFile = '~/.config/nvim/lua/v9/colorscheme.lua',
            livePreview = true,
        })
    end,
}

return config
