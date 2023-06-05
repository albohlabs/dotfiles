return {
  "Bekaboo/dropbar.nvim",
  event = { "BufReadPre", "BufNewFile" },
  enabled = true,
  opts = true,
  keys = {
    {
      "<leader>wp",
      function()
        require("dropbar.api").pick()
      end,
      desc = "winbar pick",
    },
  },
}
