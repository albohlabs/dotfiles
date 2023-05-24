-- local ignore_msg = function(kind, msg)
--   return {
--     opts = { skip = true },
--     filter = {
--       event = "msg_show",
--       kind = kind,
--       find = msg,
--     },
--   }
-- end
--
return {
  -- { -- add message filters
  --   "folke/noice.nvim",
  --   opts = {
  --     routes = {
  --       ignore_msg("search_count", nil), -- https://github.com/folke/noice.nvim/wiki/Configuration-Recipes#hide-search-virtual-text
  --       ignore_msg("", "written"), -- https://github.com/folke/noice.nvim/wiki/Configuration-Recipes#hide-written-messages-1
  --       ignore_msg("", nil),
  --     },
  --     views = {
  --       notify = {
  --         replace = true,
  --       },
  --     },
  --   },
  -- },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      cmdline = {
        view = "cmdline",
        format = {
          cmdline = { icon = "  " },
          search_down = { icon = "  󰄼" },
          search_up = { icon = "  " },
          lua = { icon = " " },
        },
      },
      lsp = {
        progress = { enabled = true },
        hover = { enabled = false },
        signature = { enabled = false },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            kind = "",
            find = "written",
          },
          opts = { skip = true },
        },
      },
    },
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      -- level = vim.log.levels.INFO,
      render = "compact",
      fps = 144,
      stages = "fade_in_slide_out",
    },
  },
}
