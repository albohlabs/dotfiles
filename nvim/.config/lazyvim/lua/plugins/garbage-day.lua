return {
  "zeioth/garbage-day.nvim",
  dependencies = "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    excluded_lsp_clients = {
      "rust-analyzer",
    },
    grace_period = 60 * 8,
    wakeup_delay = 5,
    notifications = false,
  },
}
