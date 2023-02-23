return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "cssmodules-language-server",
        -- "deno",
        -- "emmet-ls",
        "eslint_d",
        "graphql-language-service-cli",
        "html-lsp",
        "json-lsp",
        -- "prettier",
        "prettierd",
        "prisma-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",

        "yaml-language-server",

        -- shell
        "shfmt",
        "shellcheck",
        "bash-language-server",

        -- "haskell-language-server",

        "rust-analyzer",
        "codelldb",
      },
    },
  },
}
