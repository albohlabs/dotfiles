return {
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = {
      { "<leader>co", "<cmd>SymbolsOutline<cr>", desc = "Symbols outline" },
    },
    opts = {
      auto_preview = false,
      position = "right",

      highlight_hovered_item = false,
      auto_unfold_hover = false,
      autofold_depth = 1,
    },
  },
}
