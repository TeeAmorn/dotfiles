local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.font_size = 13

return config
