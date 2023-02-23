return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "vuki656/package-info.nvim",
        event = { "BufRead package.json" },
        config = true,
      },
      {
        "David-Kunz/cmp-npm",
        event = { "BufRead package.json" },
        config = true,
      }
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "npm", keyword_length = 3 },
      }))
    end
  },

  { "jose-elias-alvarez/typescript.nvim", opts = nil },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed,
        { "tsx", "javascript", "typescript", "css", "html", "javascript", "jsdoc", "scss" })
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed,
        {
          "css-lsp",
          "cssmodules-language-server",
          "eslint-lsp",
          "eslint_d",
          "graphql-language-service-cli",
          "html-lsp",
          "prettierd",
          "prisma-language-server",
          "stylelint-lsp",
          "typescript-language-server",
        })
    end,
  },

}
