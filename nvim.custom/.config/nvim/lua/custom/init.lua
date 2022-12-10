vim.g.mapleader = ","

vim.opt.relativenumber = true -- turn hybrid line numbers on

vim.opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for

vim.wo.wrap = false
vim.wo.linebreak = false
vim.wo.list = false

vim.o.foldlevelstart = 99
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

local autocmd = vim.api.nvim_create_autocmd

-- https://neovim.io/doc/user/autocmd.html#autocmd-events
autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		-- https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
		vim.cmd("highlight Folded guifg=#a8a8a8")
	end,
})

local augroup = vim.api.nvim_create_augroup

-- highlight yanked text
local yank_group = augroup("HighlightYank", {})
autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})
