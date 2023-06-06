-- https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/palettes/macchiato.lua
local theme = require("catppuccin.palettes").get_palette("macchiato")

return {
  "Bekaboo/dropbar.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    icons = {
      ui = { bar = { separator = " > " } },
    },
  },
  keys = {
    {
      "<leader>wp",
      function()
        require("dropbar.api").pick()
      end,
      desc = "winbar pick",
    },
  },
}
