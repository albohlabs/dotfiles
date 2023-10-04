return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = {
      width = 0.75,
    },
    plugins = {
      twilight = { enabled = false },
      gitsigns = { enabled = true },
      tmux = { enabled = true },
    },
    wezterm = {
      enabled = false,
      font = "+4",
    },
  },
  keys = {
    { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    {
      "<leader>zt",
      function()
        require("zen-mode").toggle({
          plugins = {
            twilight = { enabled = true },
          },
        })
      end,
      desc = "Zen Mode - Twilight",
    },
    {
      "<leader>zp",
      function()
        require("zen-mode").toggle({
          plugins = {
            twilight = { enabled = true },
          },
          wezterm = {
            enabled = true,
            font = "+4",
          },
        })
      end,
      desc = "Zen Mode - Present",
    },
  },
}
