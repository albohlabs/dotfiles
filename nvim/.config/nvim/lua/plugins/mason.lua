return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        "json-lsp",

        "yaml-language-server",

        -- shell
        "shfmt",
        "shellcheck",
        "bash-language-server",

        -- "haskell-language-server",
      },
    },
  },
}
