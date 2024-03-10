local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Catppuccin Macchiato'
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.font_size = 11
config.font = wezterm.font('JetBrains Mono', { weight = 'Light' })
config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}

local act = wezterm.action

config.keys = {
  { key = '{', mods = 'CTRL|SHIFT', action = act.MoveTabRelative(-1) },
  { key = '}', mods = 'CTRL|SHIFT', action = act.MoveTabRelative(1) },
    {
    key = 't',
    mods = 'CTRL',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
}

config.colors = {
  tab_bar = {
    compose_cursor = '#f0c6c6',
    cursor_bg = '#f4dbd6',
    cursor_border = '#f4dbd6',
    cursor_fg = '#181926',
    foreground = '#cad3f5',
    scrollbar_thumb = '#5b6078',
    selection_bg = '#5b6078',
    selection_fg = '#cad3f5',
    split = '#6e738d',
    visual_bell = '#363a4f' ,
    active_tab = {
        bg_color = '#c6a0f6',
        fg_color = '#181926',
        intensity = 'Normal',
        underline = 'None',
        italic = false,
        strikethrough = false,
    },
    inactive_tab = {
        bg_color = '#1e2030',
        fg_color = '#cad3f5',
        intensity = 'Normal',
        italic = false,
        strikethrough = false,
        underline = 'None' ,
    },
    inactive_tab_hover = {
        bg_color = '#24273a',
        fg_color = '#cad3f5',
        intensity = 'Normal',
        italic = false,
        strikethrough = false,
        underline = 'None',
    },
    new_tab = {
        bg_color = '#363a4f',
        fg_color = '#cad3f5',
        intensity = 'Normal',
        italic = false,
        strikethrough = false,
        underline = 'None'
    },
    new_tab_hover = {
        bg_color = '#494d64',
        fg_color = '#cad3f5',
        intensity = 'Normal',
        italic = false,
        strikethrough = false,
        underline = 'None',
    },
  },
}

return config

