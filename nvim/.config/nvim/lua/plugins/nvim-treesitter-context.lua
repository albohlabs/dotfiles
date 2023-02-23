return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function(_, _)
      require("treesitter-context").setup({
        enable = true,
      })
    end,
  },
}
