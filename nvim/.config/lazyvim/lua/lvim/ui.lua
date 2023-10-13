local icons = require("lazyvim.config").icons
-- https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/palettes/macchiato.lua
local theme = require("catppuccin.palettes").get_palette("macchiato")

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          -- { "branch", color = { fg = theme.overlay0, bg = theme.base } },
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
            color = { bg = theme.base },
          },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
            color = { fg = theme.overlay0, bg = theme.base },
          },
        },
      },
    },
  },
}
