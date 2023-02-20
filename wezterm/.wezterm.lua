-- https://wezfurlong.org/wezterm/config/lua/config/

return {
	-- Font config
	family = "Hasklug Nerd Font",
	-- family = "FiraCode Nerd Font Mono",
	font_size = 11.3,
	line_height = 1.23,
	warn_about_missing_glyphs = false,

	-- Cursor style
	default_cursor_style = "BlinkingBlock",

	-- X11
	enable_wayland = true,

	-- color_scheme = "Catppuccin Frappe",
	color_scheme = "Catppuccin Macchiato",
	-- color_scheme = "Catppuccin Mocha",

	-- Padding
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},

	-- Tab Bar
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,

	-- General
	automatically_reload_config = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
}
