return {
  "tpope/vim-fugitive",
  lazy = false,
  cmd = { "Git" },
  keys = {
    { "<leader>gb", "<cmd>G blame<cr>", desc = "blame file" },
  },
}
