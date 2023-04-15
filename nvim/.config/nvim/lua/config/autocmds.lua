-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- local number_toggle = vim.api.nvim_create_augroup("RelativeNumber", { clear = true })
--
-- vim.api.nvim_create_autocmd("InsertEnter", {
--   callback = function()
--     vim.cmd("set norelativenumber")
--   end,
--   group = number_toggle,
--   pattern = "*",
-- })
--
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   callback = function()
--     vim.cmd("set relativenumber")
--   end,
--   group = number_toggle,
--   pattern = "*",
-- })

-- show cursor line only in active window
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  callback = function()
    local ok, cl = pcall(vim.api.nvim_win_get_var, 0, "auto-cursorline")
    if ok and cl then
      vim.wo.cursorline = true
      vim.api.nvim_win_del_var(0, "auto-cursorline")
    end
  end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
  callback = function()
    local cl = vim.wo.cursorline
    if cl then
      vim.api.nvim_win_set_var(0, "auto-cursorline", cl)
      vim.wo.cursorline = false
    end
  end,
})

