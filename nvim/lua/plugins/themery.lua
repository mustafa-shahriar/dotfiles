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
                    name = 'tokyonight',
                    colorscheme = 'tokyonight'
                },
                {
                    name = "GithubDark",
                    colorscheme = "github_dark",
                },
                {
                    name = "github_dark_dimmed",
                    colorscheme = "github_dark_dimmed",
                },

                {
                    name = "github_dark_default",
                    colorscheme = "github_dark_default",
                },
                {
                    name = "github_dark_colorblind",
                    colorscheme = "github_dark_colorblind",
                },
            },
            themeConfigFile = '~/.config/nvim/lua/v9/colorscheme.lua',
            livePreview = true,
        })
    end
}
