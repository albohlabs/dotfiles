-- auto-resize windows
return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
  },
  keys = {
    { "<C-w>z", "<cmd>WindowsMaximize<cr>", desc = "Maximize" },
    { "<C-w>_", "<cmd>WindowsMaximizeVertically<cr>", desc = "Maximize width" },
    { "<C-w>|", "<cmd>WindowsMaximizeHorizontally<cr>", desc = "Maximize height" },
    { "<C-w>=", "<cmd>WindowsEqualize<cr>", desc = "Equalize heights and widths" },
  },
  cmd = {
    "WindowsMaximize",
    "WindowsMaximizeVertically",
    "WindowsMaximizeHorizontally",
    "WindowsEqualize",
    "WindowsEnableAutowidth",
    "WindowsDisableAutowidth",
    "WindowsToggleAutowidth",
  },
  opts = {},
  init = function()
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
  end,
}
