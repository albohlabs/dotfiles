-- https://wezfurlong.org/wezterm/config/lua/config/
local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		-- color_scheme = "Catppuccin Frappe",
		-- color_scheme = "Catppuccin Macchiato",
		-- color_scheme = "Catppuccin Mocha",

		-- color_scheme = "tokyonight_day",
		-- color_scheme = "tokyonight_night",
		-- color_scheme = "tokyonight_storm",
		-- return "Catppuccin Mocha"
		return "tokyonight_moon"
	else
		-- return "Catppuccin Latte"
		-- return "tokyonight_day"
		return "tokyonight_moon"
	end
end

return {
	-- Font config
	font = wezterm.font("Hasklug Nerd Font"),
	font_size = 12,
	line_height = 1.25,
	warn_about_missing_glyphs = false,

	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),

	-- Cursor style
	default_cursor_style = "BlinkingBar",
	xcursor_theme = "Yaru",

	-- Padding
	window_padding = {
		left = 0,
		right = 0,
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
	bold_brightens_ansi_colors = true,
	window_background_opacity = 0.9,
	text_background_opacity = 0.8,
	-- cell_width = 0.9,
}
