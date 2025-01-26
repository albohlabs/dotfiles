-- https://wezfurlong.org/wezterm/config/lua/config/
---@type Wezterm
local wezterm = require("wezterm")

local config = wezterm.config_builder()

wezterm.log_info("reloading")

require("links").setup(config)

config.font_size = 11
config.line_height = 1.25
-- config.cell_width = 1.05

config.underline_thickness = 2
config.underline_position = -6

config.font = wezterm.font({ family = "Hasklug Nerd Font" })
config.font_rules = {
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({ family = "Maple Mono", weight = "Bold", style = "Italic" }),
	},
	{
		italic = true,
		intensity = "Half",
		font = wezterm.font({ family = "Maple Mono", weight = "DemiBold", style = "Italic" }),
	},
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({ family = "Maple Mono", style = "Italic" }),
	},
}

-- config.bold_brightens_ansi_colors = "BrightAndBold"

config.set_environment_variables = {
	-- if not working rebuild cache `bat cache --build`
	BAT_THEME = "tokyonight_day",
	FISH_THEME = "day",
}

config.color_scheme_dirs = { wezterm.home_dir .. "/development/tokyonight.nvim/extras/wezterm" }
config.color_scheme = "tokyonight_day"

config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

-- Tab Bar
config.enable_tab_bar = false

return config --[[@as Wezterm]]
