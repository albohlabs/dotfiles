return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      {
        "<leader>xo",
        "<cmd> lua vim.diagnostic.open_float()<CR>",
        desc = "Open diagnostics",
      },
      {
        "<leader>xn",
        "<cmd> lua vim.diagnostic.goto_next()<CR>",
        desc = "Next diagnostics",
      },
      {
        "<leader>xp",
        "<cmd> lua vim.diagnostic.gotoprev()<CR>",
        desc = "Prev diagnostics",
      },
    },
  },
}
