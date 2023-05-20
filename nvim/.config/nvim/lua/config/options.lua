-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "

-- default position
vim.opt.scrolloff = 5

vim.opt.breakindent = true
vim.opt.showbreak = "↪ "

vim.opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}

vim.opt.grepprg = "rg --vimgrep --smart-case --"

vim.g.os = vim.loop.os_uname().sysname
vim.g.open_command = vim.g.os == "Darwin" and "open" or "xdg-open"

-- Disable comment continuation
vim.opt.formatoptions:remove("o") -- Don't continue after 'o' or 'O'
vim.opt.formatoptions:remove("r") -- Don't continue after <cr>
