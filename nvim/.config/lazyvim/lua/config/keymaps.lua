-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, expr = true }

local util = require("utils")
util.cowboy()

-- https://neovim.io/doc/user/vimindex.html

vim.keymap.set("n", "<C-O>", "<C-O>zz", { noremap = true, silent = true, desc = "move back" })
vim.keymap.set("n", "<C-I>", "<C-I>zz", { noremap = true, silent = true, desc = "move forward" })

-- Center on page up/down
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- go out of closing bracket
vim.keymap.set("i", "jj", "<c-o>:call search('}\\|)\\|]\\|>\\|\"', 'cW')<cr><Right>")

-- smart deletion, dd
-- Code will check if u are deleting empty line, if so - use black hole register.
vim.keymap.set("n", "dd", function()
  if vim.api.nvim_get_current_line():match("^%s*$") then
    return '"_dd'
  else
    return "dd"
  end
end, opts)

-- smart indent, i
-- indent properly on empty lines
vim.keymap.set("n", "i", function()
  if #vim.fn.getline(".") == 0 then
    return [["_cc]]
  else
    return "i"
  end
end, opts)

-- absolute filepath of the current buffer:
vim.keymap.set("n", "%%", function()
  vim.api.nvim_feedkeys(vim.fn.expand("%:p:h") .. "/", "c", false)
end, opts)
