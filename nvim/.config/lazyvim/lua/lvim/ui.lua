local icons = require("lazyvim.config").icons

return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.views = {
        mini = {
          win_options = {
            winblend = 0,
          },
        },
      }

      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        theme = "auto",
      },
      -- https://github.com/nvim-lualine/lualine.nvim#available-options
      sections = {
        lualine_a = { "branch" },
        lualine_b = {
          { "filename", file_status = false, path = 1 },
        },
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
        },
        lualine_x = {
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
          },
        },
        lualine_y = {},
        lualine_z = {},
      },
    },
  },

  "folke/twilight.nvim",
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = { enabled = vim.env.TMUX ~= nil },
        kitty = { enabled = true, font = "+2" },
        wezterm = { enabled = true, font = "+2" },
      },
    },
    keys = { { "<leader>Z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
