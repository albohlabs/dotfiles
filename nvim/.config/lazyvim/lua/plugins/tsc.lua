return {
  enabled = false,
  "dmmulroy/tsc.nvim",
  filetype = "typescript",
  -- name = "tsc",
  -- dependencies = { "nvim-lua/plenary.nvim" },
  -- config = true,
  dev = true,
  lazy = false,
  -- cmd = { "TSC" },
  config = function()
    require("tsc").setup()
  end,
}
