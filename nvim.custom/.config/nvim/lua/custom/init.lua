vim.g.mapleader = ","

vim.opt.relativenumber = true -- turn hybrid line numbers on

vim.opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for

vim.wo.wrap = false
vim.wo.linebreak = false
vim.wo.list = false

-- https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
