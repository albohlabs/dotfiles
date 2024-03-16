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
      })
    end,
  },

  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- diagnostics = { virtual_text = { prefix = "icons" } },
      inlay_hints = { enabled = true },
      capabilities = {
        textDocument = {
          completion = {
            completionItem = {
              snippetSupport = false,
            },
          },
        },
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = false,
          },
        },
      },
      setup = {},
    },
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["markdown"] = { { "prettierd", "prettier" } },
        ["markdown.mdx"] = { { "prettierd", "prettier" } },

        ["javascript"] = { "eslint_d", { "dprint", "prettierd", "prettier" } },
        ["javascriptreact"] = { "eslint_d", { "dprint", "prettierd", "prettier" } },
        ["typescript"] = { "eslint_d", { "dprint", "prettierd", "prettier" } },
        ["typescriptreact"] = { "eslint_d", { "dprint", "prettierd", "prettier" } },

        -- ["javascript"] = { "dprint", "prettierd", "prettier" },
        -- ["javascriptreact"] = { "dprint", "prettierd", "prettier" },
        -- ["typescript"] = { "dprint", "prettierd", "prettier" },
        -- ["typescriptreact"] = { "dprint", "prettierd", "prettier" },

        -- ["javascript"] = { { "dprint", "prettierd", "prettier" } },
        -- ["javascriptreact"] = { { "dprint", "prettierd", "prettier" } },
        -- ["typescript"] = { { "dprint", "prettierd", "prettier" } },
        -- ["typescriptreact"] = { { "dprint", "prettierd", "prettier" } },
      },
      formatters = {
        dprint = {
          condition = function(ctx)
            return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
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
