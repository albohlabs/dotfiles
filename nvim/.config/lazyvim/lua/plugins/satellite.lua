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
        "lazy",
        "mason",
        "DressingInput",
        "notify",
      },
    },
  },
}
