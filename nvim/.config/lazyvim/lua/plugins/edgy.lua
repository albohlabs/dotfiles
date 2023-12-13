return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      left = { size = 40 },
      bottom = { size = 10 },
      right = { size = 40 },
      top = { size = 10 },
    },
    animate = {
      enabled = false,
    },
    bottom = {
      {
        ft = "toggleterm",
        size = { height = 0.4 },
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "noice",
        size = { height = 0.4 },
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      { title = "Spectre", ft = "spectre_panel", size = { height = 0.4 } },
      {
        ft = "lazyterm",
        title = "LazyTerm",
        size = { height = 0.4 },
        filter = function(buf)
          return not vim.b[buf].lazyterm_cmd
        end,
      },
      "Trouble",
      {
        ft = "trouble",
        title = "TROUBLE",
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      { ft = "qf", title = "QuickFix" },
      {
        ft = "help",
        size = { height = 20 },
        -- only show help buffers
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
    },
    left = {
      {
        title = "  File",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "filesystem"
        end,
        open = function()
          vim.api.nvim_input("<esc><space>e")
        end,
        pinned = true,
        size = { height = 0.7 },
      },
      {
        title = "  Git",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "git_status"
        end,
        pinned = true,
        open = "Neotree position=right git_status",
      },
      "neo-tree",
    },
    right = {
      {
        title = "  Outline",
        ft = "Outline",
        pinned = true,
        open = "SymbolsOutline",
      },
    },
  },
}
