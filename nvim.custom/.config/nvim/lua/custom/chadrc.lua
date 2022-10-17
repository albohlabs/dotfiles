-- https://github.com/siduck/dotfiles/blob/master/nvchad/custom/chadrc.lua
-- https://nvchad.github.io/config/Mappings

local M = {}

M.ui = {
	theme = "onenord",
	theme_toggle = { "onenord", "one_light" },
}

local override = require("custom.override")

M.plugins = {
	override = {
		["kyazdani42/nvim-tree.lua"] = override.nvimtree,
		["nvim-treesitter/nvim-treesitter"] = override.treesitter,
		["nvim-telescope/telescope.nvim"] = override.telescope,
		["williamboman/mason.nvim"] = override.mason,
		["hrsh7th/nvim-cmp"] = override.cmp,
		["neovim/nvim-lspconfig"] = override.lspconfig,
	},

	user = require("custom.plugins"),
}

M.mappings = require("custom.mappings")

return M
