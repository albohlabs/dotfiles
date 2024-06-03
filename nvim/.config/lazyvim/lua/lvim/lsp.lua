-- TODO: move to plugins.lang
return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "oxlint",
        "biome",
      })
    end,
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["markdown"] = { { "prettierd", "prettier" } },
        ["markdown.mdx"] = { { "prettierd", "prettier" } },

        ["javascript"] = { "biome", { "prettierd", "prettier" } },
        ["javascriptreact"] = { "biome", { "prettierd", "prettier" } },
        ["typescript"] = { "biome", { "prettierd", "prettier" } },
        ["typescriptreact"] = { "biome", { "prettierd", "prettier" } },
        ["vue"] = { { "prettierd", "prettier" } },
      },
      formatters = {
        biome = {
          condition = function(self, ctx)
            return vim.fs.find({ "biome.json" }, { path = ctx.filename, upward = true })[1]
          end,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        lua = { "selene", "luacheck" },
        dockerfile = { "hadolint" },
        markdown = { "markdownlint" },
        typescript = { "eslint_d" },
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      },
      linters = {
        selene = {
          condition = function(ctx)
            return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
          end,
        },
        luacheck = {
          condition = function(ctx)
            return vim.fs.find({ ".luacheckrc" }, { path = ctx.filename, upward = true })[1]
          end,
        },
      },
    },
  },
}
