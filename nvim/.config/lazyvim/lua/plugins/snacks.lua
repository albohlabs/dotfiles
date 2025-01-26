return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    animate = { enabled = false },
    scroll = { enabled = false },
    picker = {
      layout = {
        -- fullscreen = true,
      },
    },
  },
}
