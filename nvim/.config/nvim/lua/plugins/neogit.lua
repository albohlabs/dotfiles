return {
  "TimUntersberger/neogit",
  dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
  cmd = "Neogit",
  keys = {
    {
      "<leader>gn",
      "<Cmd>Neogit<CR>",
      desc = "Neogit",
    },
  },
  config = function()
    require("neogit").setup({
      disable_commit_confirmation = true,
      integrations = {
        diffview = true,
      },
    })
  end,
}
