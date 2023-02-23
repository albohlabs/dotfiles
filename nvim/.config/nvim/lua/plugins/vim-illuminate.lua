return {
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      delay = 200,
      providers = { "lsp", "treesitter", "regex" },
      filetypes_denylist = { "dashboard", "NvimTree", "markdown", "rmd", "tex" },
      under_cursor = true,
      modes_denylist = {},
      large_file_overrides = 1000,
      large_file_config = {},
    },
    config = function(_, opts)
      require("illuminate").configure(opts)

      vim.api.nvim_set_hl(0, "IlluminatedWordText", { italic = false, bg = "#53565d" })
      vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "IlluminatedWordText" })
      vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "IlluminatedWordText" })
    end,
  },
}
