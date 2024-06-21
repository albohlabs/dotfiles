-- https://wezfurlong.org/wezterm/config/lua/config/
---@type Wezterm
local wezterm = require("wezterm")
local config = wezterm.config_builder()

wezterm.log_info("reloading")

require("links").setup(config)

local appearance = wezterm.gui.get_appearance()
local is_dark = appearance:find("Dark")

config.font_size = 16
config.line_height = 1.25
-- config.cell_width = 1
config.window_background_opacity = is_dark and 0.85 or 0.8

config.font = wezterm.font_with_fallback({
	"Hasklug Nerd Font",
	"FiraCode Nerd Font",
	{ family = "Symbols Nerd Font Mono" },
})
-- config.font = wezterm.font("SourceCodePro")
-- config.font = wezterm.font("JetbrainsMono Nerd Font")
-- config.font = wezterm.font("FiraCode Nerd Font")

config.bold_brightens_ansi_colors = true

config.set_environment_variables = {
	-- if not working rebuild cache `bat cache --build`
	BAT_THEME = is_dark and "tokyonight_night" or "tokyonight_day",
	FISH_THEME = is_dark and "night" or "day",
}

config.color_scheme_dirs = { wezterm.home_dir .. "/development/tokyonight.nvim/extras/wezterm" }
config.color_scheme = is_dark and "tokyonight_night" or "tokyonight_day"

-- so the font increase with CTRL + works when using slides
config.adjust_window_size_when_changing_font_size = false

config.enable_tab_bar = false

config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

config.enable_wayland = false -- https://github.com/wez/wezterm/issues/5103

-- use GPU accelerated rasterization
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- Tab Bar
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.automatically_reload_config = true
config.window_decorations = "RESIZE"

return config --[[@as Wezterm]]
