-- https://wezfurlong.org/wezterm/config/lua/config/
local wezterm = require("wezterm")

-- https://github.com/folke/zen-mode.nvim#wezterm
wezterm.on("user-var-changed", function(window, pane, name, value)
	local overrides = window:get_config_overrides() or {}
	if name == "ZEN_MODE" then
		local incremental = value:find("+")
		local number_value = tonumber(value)
		if incremental ~= nil then
			while number_value > 0 do
				window:perform_action(wezterm.action.IncreaseFontSize, pane)
				number_value = number_value - 1
			end
			overrides.enable_tab_bar = false
		elseif number_value < 0 then
			window:perform_action(wezterm.action.ResetFontSize, pane)
			overrides.font_size = nil
			overrides.enable_tab_bar = true
		else
			overrides.font_size = number_value
			overrides.enable_tab_bar = false
		end
	end
	window:set_config_overrides(overrides)
end)

local function font(opts)
	return wezterm.font_with_fallback({
		opts,
		"Symbols Nerd Font Mono",
	})
end

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
	-- default_prog = { "/bin/fish", "--login", "--command=tmux attach; or tmux" },
	default_prog = { "/bin/fish", "--login" },

	font_size = 12,
	line_height = 1.25,

	-- font = font("Hasklug Nerd Font"),

	font = font("FiraCode Nerd Font"),
	cell_width = 0.9,

	font_rules = {
		{
			italic = true,
			intensity = "Normal",
			font = font({
				family = "VictorMono Nerd Font",
				style = "Italic",
			}),
		},
		{
			italic = true,
			intensity = "Half",
			font = font({
				family = "VictorMono Nerd Font",
				weight = "DemiBold",
				style = "Italic",
			}),
		},

		{
			italic = true,
			intensity = "Bold",
			font = font({
				family = "VictorMono Nerd Font",
				weight = "Bold",
				style = "Italic",
			}),
		},
	},

	warn_about_missing_glyphs = false,

	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),

	-- Cursor style
	--	default_cursor_style = "BlinkingBar",
	xcursor_theme = "Yaru",

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	-- Tab Bar
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	automatically_reload_config = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	bold_brightens_ansi_colors = true,
	window_background_opacity = 0.9,
	text_background_opacity = 0.8,

	hyperlink_rules = {
		-- Linkify things that look like URLs and the host has a TLD name.
		-- Compiled-in default. Used if you don't specify any hyperlink_rules.
		{
			regex = "\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b",
			format = "$0",
		},

		-- linkify email addresses
		-- Compiled-in default. Used if you don't specify any hyperlink_rules.
		{
			regex = [[\b\w+@[\w-]+(\.[\w-]+)+\b]],
			format = "mailto:$0",
		},

		-- file:// URI
		-- Compiled-in default. Used if you don't specify any hyperlink_rules.
		{
			regex = [[\bfile://\S*\b]],
			format = "$0",
		},

		-- Linkify things that look like URLs with numeric addresses as hosts.
		-- E.g. http://127.0.0.1:8000 for a local development server,
		-- or http://192.168.1.1 for the web interface of many routers.
		{
			regex = [[\b\w+://(?:[\d]{1,3}\.){3}[\d]{1,3}\S*\b]],
			format = "$0",
		},

		-- Make username/project paths clickable. This implies paths like the following are for GitHub.
		-- As long as a full URL hyperlink regex exists above this it should not match a full URL to
		-- GitHub or GitLab / BitBucket (i.e. https://gitlab.com/user/project.git is still a whole clickable URL)
		{
			regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
			format = "https://www.github.com/$1/$3",
		},
	},
}
