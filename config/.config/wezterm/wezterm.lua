-- https://wezfurlong.org/wezterm/config/lua/config/
---@type Wezterm
local wezterm = require("wezterm")
local appearance = require("appearance")
local is_dark = appearance.is_dark()

local config = wezterm.config_builder()

wezterm.log_info("reloading")

require("links").setup(config)

config.font_size = 11
config.line_height = 1.25
-- config.cell_width = 1.05

config.underline_thickness = 2
config.underline_position = -6

config.font = wezterm.font_with_fallback({
	"Hasklug Nerd Font",
	"FiraCode Nerd Font",
	{ family = "Symbols Nerd Font Mono" },
})
-- config.font = wezterm.font("SourceCodePro")
-- config.font = wezterm.font("JetbrainsMono Nerd Font")
-- config.font = wezterm.font("FiraCode Nerd Font")

-- config.bold_brightens_ansi_colors = "BrightAndBold"

config.set_environment_variables = {
	-- if not working rebuild cache `bat cache --build`
	BAT_THEME = is_dark and "tokyonight_night" or "tokyonight_day",
	FISH_THEME = is_dark and "night" or "day",
}

config.color_scheme_dirs = { wezterm.home_dir .. "/development/tokyonight.nvim/extras/wezterm" }
config.color_scheme = is_dark and "tokyonight_night" or "tokyonight_day"

config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

-- Tab Bar
config.enable_tab_bar = false

return config --[[@as Wezterm]]
