-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "tokyonight"
config.default_prog = { "powershell.exe" }
config.window_background_opacity = 0.0
config.win32_system_backdrop = "Tabbed" -- options: Mica, 2: Acrylic, 1: Tabbed, Disable, Auto
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = "NeverPrompt"
-- config.window_decorations = "RESIZE"
config.window_padding = { left = 2, top = 2, bottom = 2, right = 2 }
config.window_frame = { inactive_titlebar_bg = "#000000" }
config.font = wezterm.font("Fira Code")
config.font_size = 10

-- and finally, return the configuration to wezterm
return config
