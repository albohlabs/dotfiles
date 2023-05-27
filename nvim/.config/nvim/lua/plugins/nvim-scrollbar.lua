return {
  "petertriho/nvim-scrollbar",
  event = "BufReadPost",
  opts = {
    set_highlights = false,
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
      "",
    },
    handlers = {
      gitsigns = true,
    },
  },
}
