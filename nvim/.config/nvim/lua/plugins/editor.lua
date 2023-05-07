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
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = true,
    keys = { { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "DiffView" } },
  },

  {
    "mbbill/undotree",
    keys = {
      { "<leader>ut", "<Cmd>UndotreeToggle<CR>", desc = "toggle Undotree" },
    },
  },
}
