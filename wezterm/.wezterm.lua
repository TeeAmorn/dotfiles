local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"

config.keys = {
	{ key = "t", mods = "ALT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ key = "w", mods = "ALT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	{ key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
	{ key = "5", mods = "ALT", action = wezterm.action.ActivateTab(4) },
	{ key = "6", mods = "ALT", action = wezterm.action.ActivateTab(5) },
	{ key = "7", mods = "ALT", action = wezterm.action.ActivateTab(6) },
	{ key = "8", mods = "ALT", action = wezterm.action.ActivateTab(7) },
	{ key = "[", mods = "ALT", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "]", mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
}

config.window_background_opacity = 0.8
config.kde_window_background_blur = true

config.font_size = 10

config.window_frame = {
	font_size = 10,
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
