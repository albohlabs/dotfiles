-- auto-resize windows
return {
  "anuvyklack/windows.nvim",
  event = "WinNew",
  dependencies = {
    { "anuvyklack/middleclass" },
    { "anuvyklack/animation.nvim", enabled = false },
  },
  keys = { { "<leader>Z", "<cmd>WindowsMaximize<cr>", desc = "Zoom" } },
  config = function()
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
    require("windows").setup({
      animation = { enable = false, duration = 150 },
    })
  end,
}
