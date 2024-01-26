-- auto-resize windows
return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
    { "anuvyklack/animation.nvim", enabled = false },
  },
  event = "WinNew",
  keys = {
    { "<C-w>z", "<cmd>WindowsMaximize<cr>", desc = "Maximize" },
    { "<C-w>_", "<cmd>WindowsMaximizeVertically<cr>", desc = "Maximize width" },
    { "<C-w>|", "<cmd>WindowsMaximizeHorizontally<cr>", desc = "Maximize height" },
    { "<C-w>=", "<cmd>WindowsEqualize<cr>", desc = "Equalize heights and widths" },
  },
  config = function()
    vim.o.winwidth = 5
    vim.o.equalalways = false
    require("windows").setup({
      animation = { enable = false, duration = 150 },
    })
  end,
}
