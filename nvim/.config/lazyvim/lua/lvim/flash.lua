return {
  "folke/flash.nvim",
  enabled = true,
  -- stylua: ignore
  keys = {
    { "s", false },
    { "s", false },
    { "<leader>j", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>k", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
