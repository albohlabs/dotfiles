-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, expr = true }
local silent = { silent = true }

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

-- Store relative line number jumps in the jumplist if they exceed a threshold.
vim.keymap.set("n", "k", '(v:count > 5 ? "m\'" . v:count : "") . "k"', { expr = true })
vim.keymap.set("n", "j", '(v:count > 5 ? "m\'" . v:count : "") . "j"', { expr = true })

-- Navigate merge conflict markers
vim.keymap.set("n", "]n", [[<cmd>call search('^\(@@ .* @@\|[<=>|]\{7}[<=>|]\@!\)', 'W')<cr>]], silent)
vim.keymap.set("n", "[n", [[<cmd>call search('^\(@@ .* @@\|[<=>|]\{7}[<=>|]\@!\)', 'bW')<cr>]], silent)

-- Open the current file's directory
vim.keymap.set(
  "n",
  "-",
  [[expand('%') == '' ? ':e ' . getcwd() . '<cr>' : ':e %:h<cr>']],
  { expr = true, silent = true }
)

-- Close floating windows, clear highlights, etc.
local function close_all_floating_windows()
  local ignored_filetypes = {}

  for _, window in ipairs(vim.api.nvim_list_wins()) do
    local config = vim.api.nvim_win_get_config(window)

    local bufnr = vim.fn.winbufnr(window)
    local buf_filetype = vim.fn.getbufvar(bufnr, "&filetype")
    if config.relative ~= "" and not vim.tbl_contains(ignored_filetypes, buf_filetype) then
      vim.api.nvim_win_close(window, false)
    end
  end
end

vim.keymap.set("n", "<esc>", function()
  vim.lsp.buf.clear_references()
  vim.cmd.nohlsearch()

  close_all_floating_windows()
end)

-- DiffView
DiffViewToggle = function()
  local lib = require("diffview.lib")
  local view = lib.get_current_view()
  if view then
    -- Current tabpage is a Diffview; close it
    vim.cmd.DiffviewClose()
  else
    -- No open Diffview exists: open a new one
    vim.cmd.DiffviewOpen()
  end
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>gd",
  "<cmd>lua DiffViewToggle()<CR>",
  { noremap = true, silent = true, desc = "Toggle DiffView" }
)
