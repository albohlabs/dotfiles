return {
  {
    "neanias/everforest-nvim",
    enable = false,
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("everforest").setup({
        italics = true,
        ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
        ---Default is "medium".
        background = "soft",
        ---How much of the background should be transparent. 2 will have more UI
        ---components be transparent (e.g. status line background)
        transparent_background_level = 2,
        ---Some plugins support highlighting error/warning/info/hint texts, by
        ---default these texts are only underlined, but you can use this option to
        ---also highlight the background of them.
        diagnostic_text_highlight = true,
      })
    end,
  },

  {
    "tokyonight.nvim",
    enabled = true,
    priority = 1000,
    opts = function()
      return {
        style = "day", -- storm, moon, night, day
        transparent = true,

        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg }
          hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
          hl.TelescopePromptNormal = { bg = prompt }
          hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
          hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
          hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
          hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
        end,
      }
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    priority = 2000,
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      transparent_background = true,
      term_colors = true,
      compile = {
        enabled = false,
        path = vim.fn.stdpath("cache") .. "/catppuccin",
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        coc_nvim = false,
        lsp_trouble = true,
        cmp = true,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = true,
        leap = false,
        telescope = true,
        nvimtree = {
          enabled = true,
          show_root = true,
          transparent_panel = false,
        },
        neotree = {
          enabled = false,
          show_root = true,
          transparent_panel = false,
        },
        dap = {
          enabled = false,
          enable_ui = false,
        },
        which_key = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        dashboard = true,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = true,
        markdown = true,
        lightspeed = false,
        ts_rainbow = false,
        hop = false,
        notify = true,
        telekasten = true,
        symbols_outline = true,
        mini = false,
        aerial = false,
        vimwiki = true,
        beacon = true,
      },
      color_overrides = {},
      highlight_overrides = {},
    },
  },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "tokyonight",
  --     -- colorscheme = "catppuccin",
  --   },
  -- },

  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      set_dark_mode = function()
        vim.cmd("colorscheme tokyonight-night")
      end,
      set_light_mode = function()
        vim.cmd("colorscheme tokyonight-day")
      end,
    },
  },
}
