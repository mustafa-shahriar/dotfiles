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
  { key = '<', mods = 'SHIFT|ALT', action = act.ActivateTabRelative(-1) },
  { key = '>', mods = 'SHIFT|ALT', action = act.ActivateTabRelative(1) },
    {
    key = 'n',
    mods = 'SHIFT|ALT',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = '"',
    mods = 'SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'H',
    mods = 'SHIFT|CTRL',
    action = act.AdjustPaneSize { 'Left', 1 }
   },
   {
    key = 'L',
    mods = 'SHIFT|CTRL',
    action = act.AdjustPaneSize { 'Right', 1 }
    },
    --{ key = 'H', mods='A', action = act.ActivatePaneDirection 'Left' },

    --{ key = 'L', action = act.ActivatePaneDirection 'Right' },

}

config.colors = {
  tab_bar = {
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

