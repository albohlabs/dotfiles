return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, or mocha
      -- flavour = "latte",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      dim_inactive = {
        enabled = false,
        percentage = 0.10,
      },
      integrations = {
        barbar = true,
        cmp = true,
        dashboard = true,
        fidget = true,
        gitgutter = true,
        gitsigns = true,
        hop = true,
        illuminate = true,
        markdown = true,
        mason = true,
        mini = true,
        neogit = true,
        neotree = true,
        noice = true,
        notify = true,
        nvimtree = true,
        symbols_outline = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
        navic = {
          enable = true,
        },
        native_lsp = {
          enable = true,
        },
      },
    },
  },
}
