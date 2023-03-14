local ignore_msg = function(kind, msg)
  return {
    opts = { skip = true },
    filter = {
      event = "msg_show",
      kind = kind,
      find = msg,
    }
  }
end

return {
  { -- add message filters
    "folke/noice.nvim",
    opts = {
      routes = {
        ignore_msg("search_count", nil), -- https://github.com/folke/noice.nvim/wiki/Configuration-Recipes#hide-search-virtual-text
        ignore_msg("", "written"), -- https://github.com/folke/noice.nvim/wiki/Configuration-Recipes#hide-written-messages-1
        ignore_msg("", nil),
      },
      views = {
        notify = {
          replace = true,
        }
      }
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      render = "compact",
      stages = "static",
      timeout = 1000,
    }
  }
}
