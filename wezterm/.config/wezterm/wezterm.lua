-- https://wezfurlong.org/wezterm/config/lua/config/
---@type Wezterm
local wezterm = require("wezterm")
local config = wezterm.config_builder()

wezterm.log_info("reloading")

require("links").setup(config)

-- default_prog = { "/bin/fish", "--login", "--command=tmux attach; or tmux" },
-- config.default_prog = { "/bin/fish", "--login" }

config.font_size = 11
config.line_height = 1.25
config.cell_width = 0.9
config.window_background_opacity = 0.8

-- font = wezterm.font("Hasklug Nerd Font");
-- font = wezterm.font("JetbrainsMono Nerd Font");
config.font = wezterm.font("FiraCode Nerd Font")

config.bold_brightens_ansi_colors = true
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

-- https://wezfurlong.org/wezterm/colorschemes/c/index.html#catppuccin-mocha-gogh
config.color_scheme = "Catppuccin Macchiato (Gogh)"

-- Cursor style
config.default_cursor_style = "BlinkingBar"

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- use GPU accelerated rasterization
-- config.front_end = "WebGpu"
-- config.enable_wayland = true
-- config.webgpu_power_preference = "HighPerformance"

-- config.animation_fps = 1
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- Tab Bar
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.automatically_reload_config = true
config.window_decorations = "RESIZE"

return config --[[@as Wezterm]]
