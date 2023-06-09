-- better yank/paste
return {
  "gbprod/yanky.nvim",
  dependencies = { "kkharji/sqlite.lua" },
  event = "VeryLazy",
  opts = {
    highlight = {
      timer = 150,
    },
    ring = {
      storage = "sqlite",
    },
  },
  keys = {
    -- stylua: ignore
    { "<leader>P", function() require("telescope").extensions.yank_history.yank_history({ }) end, desc = "Paste from Yanky" },
    { "y", "<Plug>(YankyYank)", mode = { "n", "x" } },
    { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" } },
    { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" } },
    { "gp", "<Plug>(YankyGPutAfter)", mode = { "n", "x" } },
    { "gP", "<Plug>(YankyGPutBefore)", mode = { "n", "x" } },
    { "[y", "<Plug>(YankyCycleForward)" },
    { "]y", "<Plug>(YankyCycleBackward)" },
    { "]p", "<Plug>(YankyPutIndentAfterLinewise)" },
    { "[p", "<Plug>(YankyPutIndentBeforeLinewise)" },
    { "]P", "<Plug>(YankyPutIndentAfterLinewise)" },
    { "[P", "<Plug>(YankyPutIndentBeforeLinewise)" },
    { ">p", "<Plug>(YankyPutIndentAfterShiftRight)" },
    { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)" },
    { ">P", "<Plug>(YankyPutIndentBeforeShiftRight)" },
    { "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)" },
    { "=p", "<Plug>(YankyPutAfterFilter)" },
    { "=P", "<Plug>(YankyPutBeforeFilter)" },
  },
}
