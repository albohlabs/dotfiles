-- https://github.com/akinsho/dotfiles/blob/main/.config/nvim/after/ftplugin/json.lua
-- When creating a new line with o, make sure there is a trailing comma on the
-- current line
local api = vim.api

vim.keymap.set("n", "o", function()
  local line = vim.api.nvim_get_current_line()
  return line:find("[^,{[]$") and "A,<cr>" or "o"
end, { buffer = 0, expr = true })
