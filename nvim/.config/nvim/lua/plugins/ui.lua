return {
  -- floating winbar
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    config = function()
      require("incline").setup({
        hide = {
          cursorline = true,
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },

  -- auto-resize windows
  {
    "anuvyklack/windows.nvim",
    event = "WinNew",
    dependencies = {
      { "anuvyklack/middleclass" },
      { "anuvyklack/animation.nvim", enabled = false },
    },
    keys = { { "<leader>Z", "<cmd>WindowsMaximize<cr>", desc = "Zoom" } },
    config = function()
      vim.o.winwidth = 5
      vim.o.equalalways = false
      require("windows").setup({
        animation = { enable = false, duration = 150 },
      })
    end,
  },

  {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    config = function()
      local scrollbar = require("scrollbar")
      scrollbar.setup({
        excluded_filetypes = { "prompt", "TelescopePrompt", "noice", "notify" },
      })
    end,
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        offsets = { text_align = "left" },
        separator_style = { "", "" },
        indicator = { style = "none" },
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        always_show_bufferline = true,
      },
    },
  },

  {
    "luukvbaal/statuscol.nvim",
    config = true,
  },

  {
    "aaronkollasch/nvim-navbuddy",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "SmiteshP/nvim-navic" },
      { "MunifTanjim/nui.nvim" },
    },
    event = "LspAttach",
    opts = {
      lsp = { auto_attach = true },
      window = {
        border = "single", -- "rounded", "double", "solid", "none"
        size = "100%", -- Or table format example: { height = "40%", width = "100%"}
        position = "100%",
      },
    },
    keys = {
      { "<leader>ct", "<cmd>Navbuddy<CR>", desc = "[C]ode  [T]ree" },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      },
      sections = {
        lualine_z = {},
      },
    },
  },

  {
    "unblevable/quick-scope",
    event = { "BufReadPost", "BufNewFile" },
  },
}
