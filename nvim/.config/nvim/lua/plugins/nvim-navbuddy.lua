return {
  {
    "aaronkollasch/nvim-navbuddy",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "SmiteshP/nvim-navic" },
      { "MunifTanjim/nui.nvim" },
    },
    event = "LspAttach",
    opts = { lsp = { auto_attach = true }, },
    keys = {
      { "<leader>ct", "<cmd>Navbuddy<CR>", desc = "[C]ode  [T]ree" },
    },
  }
}
