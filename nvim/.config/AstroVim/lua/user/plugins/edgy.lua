return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    keys = {
      -- stylua: ignore
      { "<leader>E", function() require("edgy").toggle() end, desc = "Toggle Sidebars" },
      { "<leader>F", function() require("edgy").select() end, desc = "Pick Sidebar" },
    },
    opts = {
      exit_when_last = true,
      ---@type table<Edgy.Pos, {size:integer | fun():integer, wo?:vim.wo}>
      options = {
        left = { size = 40 },
        bottom = { size = 10 },
        right = { size = 30 },
        top = { size = 10 },
      },

      left = {
        {
          title = "  Files",
          ft = "neo-tree",
          filter = function(buf) return vim.b[buf].neo_tree_source == "filesystem" end,
          pinned = true,
          open = "Neotree position=left filesystem",
          size = { height = 0.5, width = 0.2 },
        },
        {
          title = "  Git",
          ft = "neo-tree",
          filter = function(buf) return vim.b[buf].neo_tree_source == "git_status" end,
          -- pinned = true,
          open = "Neotree position=right git_status",
        },
        {
          title = "Buffers",
          ft = "neo-tree",
          filter = function(buf) return vim.b[buf].neo_tree_source == "buffers" end,
          -- pinned = true,
          open = "Neotree position=top buffers",
        },
        -- any other neo-tree windows
        "neo-tree",
      },
      right = {
        {
          ft = "Outline",
          pinned = true,
          open = "SymbolsOutline",
          size = { width = 0.2 },
        },
      },

      bottom = {
        { ft = "qf", title = "QuickFix" },
        {
          ft = "help",
          size = { height = 20 },
          -- don't open help files in edgy that we're editing
          filter = function(buf) return vim.bo[buf].buftype == "help" end,
        },
        "Trouble",
        { ft = "spectre_panel", size = { height = 0.4 } },
      },

      animate = {
        enabled = false,
      },

      keys = {
        -- increase width
        ["<C-Right>"] = function(win) win:resize("width", 2) end,
        -- decrease width
        ["<C-Left>"] = function(win) win:resize("width", -2) end,
        -- increase height
        ["<C-Up>"] = function(win) win:resize("height", 2) end,
        -- decrease height
        ["<C-Down>"] = function(win) win:resize("height", -2) end,
      },
    },
  },

  -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/ui/edgy.lua
  -- prevent neo-tree from opening files in edgy windows
  {
    "nvim-neo-tree/neo-tree.nvim",
    optional = true,
    opts = function(_, opts)
      opts.open_files_do_not_replace_types = opts.open_files_do_not_replace_types
        or { "terminal", "Trouble", "qf", "Outline" }
      table.insert(opts.open_files_do_not_replace_types, "edgy")
    end,
  },
}
