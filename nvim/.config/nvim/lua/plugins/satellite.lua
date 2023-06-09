local utils = require("utils")

return {
  {
    "lewis6991/satellite.nvim",
    event = "BufReadPost",
    enabled = false,
    opts = {
      excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
        "noice",
        "neo-tree",
        "dashboard",
        "alpha",
        "lazy",
        "mason",
        "DressingInput",
        "notify",
      },
    },
  },
  -- {
  --   "folke/zen-mode.nvim",
  --   opts = function(_, opts)
  --     local old_on_open, old_on_close = opts.on_open, opts.on_close
  --     opts.on_open = function()
  --       utils.conditional_func(old_on_open, true)
  --       vim.cmd.SatelliteDisable()
  --     end
  --     opts.on_close = function()
  --       utils.conditional_func(old_on_close, true)
  --       vim.cmd.SatelliteEnable()
  --     end
  --   end,
  -- },
}
