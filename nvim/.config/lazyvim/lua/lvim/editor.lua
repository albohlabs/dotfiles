return {
  {
    "ggandor/leap.nvim",
    enabled = false,
  },
  {
    "ggandor/flit.nvim",
    enabled = false,
  },

  {
    "stevearc/aerial.nvim",
    keys = {
      { "<leader>cs", "<cmd>AerialNavToggle<cr>", desc = "Aerial (Symbols)" },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_hidden = false, -- only works on Windows for hidden files/directories
        },
      },
    },
  },
}
