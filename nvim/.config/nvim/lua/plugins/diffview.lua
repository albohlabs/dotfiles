return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  config = true,
  keys = {
    {
      "<leader>gd",
      desc = "Diffview",
    },
    {
      "<leader>gdd",
      function()
        vim.cmd("DiffviewClose")
      end,
      desc = "Close Diffview tab",
    },
    {
      "<leader>gdf",
      function()
        vim.cmd("DiffviewFileHistory")
      end,
      desc = "File history",
    },
    {
      "<leader>gdm",
      function()
        vim.cmd("DiffviewOpen main")
      end,
      desc = "DiffviewOpen main",
    },
    {
      "<leader>gdn",
      function()
        vim.cmd("DiffviewOpen master")
      end,
      desc = "DiffviewOpen master",
    },
  },
}
