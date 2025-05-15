local wezterm = require("wezterm")
local config = {}

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.color_scheme = "Catppuccin Macchiato"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.font_size = 11
config.enable_wayland = true
config.font = wezterm.font("Fira Code", { weight = "Medium" })
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

for i = 1, 8 do
	-- ALT + number to move to that position
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = "#c6a0f6",
			fg_color = "#181926",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = "#1e2030",
			fg_color = "#cad3f5",
			intensity = "Normal",
			italic = false,
			strikethrough = false,
			underline = "None",
		},
		inactive_tab_hover = {
			bg_color = "#24273a",
			fg_color = "#cad3f5",
			intensity = "Normal",
			italic = false,
			strikethrough = false,
			underline = "None",
		},
		new_tab = {
			bg_color = "#363a4f",
			fg_color = "#cad3f5",
			intensity = "Normal",
			italic = false,
			strikethrough = false,
			underline = "None",
		},
		new_tab_hover = {
			bg_color = "#494d64",
			fg_color = "#cad3f5",
			intensity = "Normal",
			italic = false,
			strikethrough = false,
			underline = "None",
		},
	},
}

return config
