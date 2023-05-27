return {
  {
    "goolord/alpha-nvim",
    opts = function(_, dashboard)
      local logo = [[
 ███╗   ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
 ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
 ██╔██╗ ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
 ██║╚██╗██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
 ██║ ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
 ╚═╝  ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
      ]]
      dashboard.section.header.val = vim.split(logo, "\n")
    end,
  },

  {
    "akinsho/bufferline.nvim",
    event = { "BufReadPost" },
    opts = {
      options = {
        diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
        -- separator_style = "", -- | "thick" | "thin" | "slope" | { 'any', 'any' },
        separator_style = { "", "" }, -- | "thick" | "thin" | { 'any', 'any' },
        indicator = {
          -- icon = " ",
          -- style = 'icon',
          -- style = "underline",
          style = "none",
        },
        close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        diagnostics_indicator = function(count, _, _, _)
          if count > 9 then
            return "9+"
          end
          return tostring(count)
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "EXPLORER",
            text_align = "center",
            -- separator = true,
          },
        },
        hover = {
          enabled = true,
          delay = 0,
          reveal = { "close" },
        },
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      },
      sections = {
        lualine_a = {},
        -- lualine_b = {},
        -- lualine_c = { diff, diagnostics },
        -- lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
