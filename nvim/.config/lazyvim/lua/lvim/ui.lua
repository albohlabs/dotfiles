local icons = require("lazyvim.config").icons

return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.debug = false

      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      local focused = true
      vim.api.nvim_create_autocmd("FocusGained", {
        callback = function()
          focused = true
        end,
      })
      vim.api.nvim_create_autocmd("FocusLost", {
        callback = function()
          focused = false
        end,
      })

      table.insert(opts.routes, 1, {
        filter = {
          ["not"] = {
            event = "lsp",
            kind = "progress",
          },
          cond = function()
            return not focused
          end,
        },
        view = "notify_send",
        opts = { stop = false },
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function(event)
          vim.schedule(function()
            require("noice.text.markdown").keys(event.buf)
          end)
        end,
      })
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      -- https://github.com/nvim-lualine/lualine.nvim#available-options
      sections = {
        lualine_a = {},
        lualine_y = {},
        lualine_z = {},
      },
    },
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        -- gitsigns = { enabled = true },
        -- tmux = { enabled = vim.env.TMUX ~= nil },
        -- kitty = { enabled = true, font = "+2" },
        -- wezterm = { enabled = true, font = "+2" },
      },
    },
    keys = { { "<leader>Z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
