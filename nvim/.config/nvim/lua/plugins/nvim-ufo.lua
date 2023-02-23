return {

  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    event = "BufReadPost",
    keys = {
      { "zR", "<cmd>lua require('ufo').openAllFolds()<cr>",  desc = "Open folds" },
      { "zM", "<cmd>lua require('ufo').closeAllFolds()<cr>", desc = "Close folds" },
    },
    opts = {
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },
}
