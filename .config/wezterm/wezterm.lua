local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	-- window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Regular" }),
	font_size = 14.0,
	color_scheme = "Github Dark (Gogh)",
	window_padding = {
		left = 3,
		right = 3,
		top = 3,
		bottom = 0,
	},
}

config.window_background_opacity = 0.85
config.macos_window_background_blur = 10

return config
