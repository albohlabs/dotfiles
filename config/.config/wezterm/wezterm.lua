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
config.window_background_opacity = is_dark and 0.85 or 0.9

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
	BAT_THEME = is_dark and "Catppuccin-mocha" or "Catppuccin-latte",
}

config.color_scheme = is_dark and "Tokyo Night (Gogh)" or "Tokyo Night Light (Gogh)"

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
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
