return {
  { "justinsgithub/wezterm-types", lazy = true },
  {
    "folke/lazydev.nvim",
    -- ft = "lua",
    opts = {
      debug = true,
      library = {
        wezterm = "wezterm-types",
      },
      -- enabled = true,
    },
  },
}
