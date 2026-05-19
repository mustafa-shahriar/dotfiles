local wezterm = require("wezterm")
local config = {}

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "tokyonight_night"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.font_size = 11
config.enable_wayland = true
config.font = wezterm.font("JetBrains Mono Nerd Font", { weight = "Regular" })
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

local act = wezterm.action

config.keys = {
	{ key = "<", mods = "SHIFT|ALT", action = act.ActivateTabRelative(-1) },
	{ key = ">", mods = "SHIFT|ALT", action = act.ActivateTabRelative(1) },
	{ key = "N", mods = "SHIFT|ALT", action = act.SpawnTab("DefaultDomain") },
	{
		key = '"',
		mods = "SHIFT|ALT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "H",
		mods = "SHIFT|ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "L",
		mods = "SHIFT|ALT",
		action = act.ActivatePaneDirection("Right"),
	},
}

-- ALT + number to move to that position
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

return config
