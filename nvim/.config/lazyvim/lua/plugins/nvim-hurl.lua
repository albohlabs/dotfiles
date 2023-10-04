-- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/pack/bash/bash.lua
local utils = require("utils")

return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "pfeiferj/nvim-hurl",
      branch = "main",
      config = true,
      event = "BufEnter *.hurl",
    },
  },

  opts = function(_, opts)
    -- Ensure that opts.ensure_installed exists and is a table or string "all".
    if not opts.ensure_installed then
      opts.ensure_installed = {}
    elseif opts.ensure_installed == "all" then
      return
    end
    utils.list_insert_unique(opts.ensure_installed, "hurl")
  end,
}
