return {
  "petertriho/nvim-scrollbar",
  enabled = false,
  event = "BufReadPost",
  opts = {
    excluded_filetypes = {
      "prompt",
      "TelescopePrompt",
      "noice",
      "neo-tree",
      "dashboard",
      "alpha",
      "lazy",
      "mason",
      "DressingInput",
      "notify",
    },
    handlers = {
      gitsigns = true,
    },
  },
}
