return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "bash",
          "css",
          "haskell",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "rust",
          "toml",
          "tsx",
          "typescript",
          "vim",
        })
      end
    end,
  },
}
