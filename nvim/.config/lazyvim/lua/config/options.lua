-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- default position
vim.opt.scrolloff = 5

-- open splits in a more natural direction
-- https://vimtricks.com/p/open-splits-more-naturally/
vim.opt.splitright = true
vim.opt.splitbelow = true

--  Autoformatting
--  TODO: Can we get rid of concat here?
vim.opt.formatoptions = table.concat({
  "2", -- Use the second line's indent vale when indenting (allows indented first line)
  "q", -- Formatting comments with `gq`
  "w", -- Trailing whitespace indicates a paragraph
  "j", -- Remove comment leader when makes sense (joining lines)
  "r", -- Insert comment leader after hitting Enter
  "o", -- Insert comment leader after hitting `o` or `O`
})

-- Messages
vim.opt.shortmess:append({
  I = true, -- No splash screen
  W = true, -- Don't print "written" when editing
  a = true, -- Use abbreviations in messages ([RO] intead of [readonly])
  c = true, -- Do not show ins-completion-menu messages (match 1 of 2)
  F = true, -- Do not print file name when opening a file
  s = true, -- Do not show "Search hit BOTTOM" message
})
