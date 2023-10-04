return {
  "aaronkollasch/nvim-navbuddy",
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "SmiteshP/nvim-navic" },
    { "MunifTanjim/nui.nvim" },
  },
  event = "LspAttach",
  opts = {
    lsp = { auto_attach = true },
    window = {
      border = "single", -- "rounded", "double", "solid", "none"
      size = "100%", -- Or table format example: { height = "40%", width = "100%"}
      position = "100%",
    },
  },
  keys = {
    { "<leader>ct", "<cmd>Navbuddy<CR>", desc = "[C]ode  [T]ree" },
  },
}
