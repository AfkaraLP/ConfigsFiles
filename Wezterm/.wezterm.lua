local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- WINDOWS SPECIFIC --
config.default_prog = { "powershell.exe" }
-- WINDOWS SPECIFIC --

-- MACOS SPECIFIC --
config.window_decorations = "RESIZE"
-- MACOS SPECIFIC --

-- COLOR 01 --
-- config.window_background_opacity = 0.7
-- config.win32_system_backdrop = "Tabbed" -- options: Mica, 2: Acrylic, 1: Tabbed, Disable, Auto
-- config.macos_window_background_blur = 25
-- COLOR 01 --

-- COLOR 02 --
config.window_background_opacity = 1.0
config.colors = { background = "#121212" }
-- COLOR 02 --

config.color_scheme = "tokyonight"
-- config.font = wezterm.font("Monocraft")
config.font_size = 15
config.window_padding = { left = 2, top = 2, bottom = 2, right = 2 }
config.window_frame = { inactive_titlebar_bg = "#000000" }
config.use_resize_increments = true
config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400
config.show_update_window = true
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = "NeverPrompt"

return config
