-- https://github.com/siduck/dotfiles/blob/master/nvchad/custom/chadrc.lua
-- https://nvchad.github.io/config/Mappings

local M = {}

M.plugins = require("custom.plugins")

M.ui = {
	theme = "everforest",
	transparency = false,
	theme_toggle = { "everforest", "everforest_light" },

	hl_override = {
		AlphaHeader = { fg = "blue" },
	},
}

M.mappings = require("custom.mappings")

return M
