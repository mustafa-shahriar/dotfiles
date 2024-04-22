return {
    'zaldih/themery.nvim',
    cmd = 'Themery',
    config = function()
        local status_ok, themery = pcall(require, 'themery')
        if not status_ok then
            return
        end

        themery.setup({
            themes = {
                --{
                --name = 'material',
                --colorscheme = 'material',
                --before = [[vim.g.material_style = 'darker']]
                --},
                {
                    name = 'vscode',
                    colorscheme = 'vscode',
                },
                {
                    name = 'catppuccin',
                    colorscheme = 'catppuccin',
                },
                {
                    name = 'catppuccin-mocha',
                    colorscheme = 'catppuccin-mocha',
                },
                {
                    name = 'catppuccin-frappe',
                    colorscheme = 'catppuccin-frappe',
                },
                {
                    name = 'catppuccin-latte',
                    colorscheme = 'catppuccin-latte',
                },
                {
                    name = 'catppuccin-macchiato',
                    colorscheme = 'catppuccin-macchiato',
                },
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
                {
                    name = 'GithubDark',
                    colorscheme = 'github_dark',
                },
                {
                    name = 'github_dark_dimmed',
                    colorscheme = 'github_dark_dimmed',
                },

                {
                    name = 'github_dark_default',
                    colorscheme = 'github_dark_default',
                },
                {
                    name = 'github_dark_colorblind',
                    colorscheme = 'github_dark_colorblind',
                },
            },
            themeConfigFile = '~/.config/nvim/lua/v9/colorscheme.lua',
            livePreview = true,
        })
    end,
}
