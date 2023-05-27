-- open git file/repo
return {
  "almo7aya/openingh.nvim",
  cmd = { "OpenInGHFile", "OpenInGHRepo" },
  keys = {
    {
      "<leader>gr",
      "<Cmd>OpenInGHRepo<CR>",
      desc = "Opens origin repo",
    },
    {
      "<leader>gf",
      "<Cmd>OpenInGHFile<CR>",
      desc = "Opens origin file",
    },
  },
}
