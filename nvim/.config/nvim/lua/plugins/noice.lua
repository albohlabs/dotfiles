return {
  { -- add message filters
    "folke/noice.nvim",
    opts = {
      routes = {
        { -- filter annoying buffer messages
          filter = {
            event = "msg_show",
            kind = "",
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "msg_show",
            kind = "search_count",
          },
          opts = { skip = true },
        },
      },
    },
  },
}
