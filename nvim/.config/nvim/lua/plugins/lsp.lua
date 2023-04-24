return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      servers = {
        -- astro = {},
        -- ansiblels = {},
        bashls = {},
        -- denols = {},
        cssls = {},
        dockerls = {},
        tsserver = {
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "literal",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = false,
                includeInlayVariableTypeHints = false,
                includeInlayPropertyDeclarationTypeHints = false,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
        },
        -- svelte = {},
        html = {},
        -- rust_analyzer = {
        --   settings = {
        --     ["rust-analyzer"] = {
        --       procMacro = { enable = true },
        --       cargo = { allFeatures = true },
        --       checkOnSave = {
        --         command = "clippy",
        --         extraArgs = { "--no-deps" },
        --       },
        --     },
        --   },
        -- },
        yamlls = {
          settings = {
            yaml = {
              keyOrdering = false,
            },
          },
        },
        lua_ls = {
          -- cmd = { "/home/folke/projects/lua-language-server/bin/lua-language-server" },
          single_file_support = true,
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                workspaceWord = true,
                callSnippet = "Both",
              },
              misc = {
                parameters = {
                  "--log-level=trace",
                },
              },
              diagnostics = {
                -- enable = false,
                groupSeverity = {
                  strong = "Warning",
                  strict = "Warning",
                },
                groupFileStatus = {
                  ["ambiguity"] = "Opened",
                  ["await"] = "Opened",
                  ["codestyle"] = "None",
                  ["duplicate"] = "Opened",
                  ["global"] = "Opened",
                  ["luadoc"] = "Opened",
                  ["redefined"] = "Opened",
                  ["strict"] = "Opened",
                  ["strong"] = "Opened",
                  ["type-check"] = "Opened",
                  ["unbalanced"] = "Opened",
                  ["unused"] = "Opened",
                },
                unusedLocalExclude = { "_*" },
              },
              format = {
                enable = true,
                defaultConfig = {
                  indent_style = "space",
                  indent_size = "2",
                  continuation_indent_size = "2",
                },
              },
            },
          },
        },
        -- vimls = {},
      },
      setup = {},
      diagnostics = {
        virtual_text = {
          -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
          -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
          -- prefix = "icons",
        },
      },
    },
    keys = {
      {
        "<leader>xo",
        "<cmd> lua vim.diagnostic.open_float()<CR>",
        desc = "Open diagnostics",
      },
      {
        "<leader>xn",
        "<cmd> lua vim.diagnostic.goto_next()<CR>",
        desc = "Next diagnostics",
      },
      {
        "<leader>xp",
        "<cmd> lua vim.diagnostic.gotoprev()<CR>",
        desc = "Prev diagnostics",
      },
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      vim.list_extend(opts.sources, {
        -- nls.builtins.diagnostics.markdownlint,

        -- nls.builtins.formatting.prettierd,
        -- nls.builtins.diagnostics.eslint_d,
        -- nls.builtins.code_actions.eslint_d,
        -- nls.builtins.formatting.prismaFmt,

        -- b.diagnostics.tsc,
        -- https://github.com/jose-elias-alvarez/typescript.nvim#null-ls
        -- require("typescript.extensions.null-ls.code-actions"),

        -- nls.builtins.code_actions.gitsigns,

        -- nls.builtins.formatting.rustfmt,

        -- Lua
        -- nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.luacheck.with({
          condition = function(utils)
            return utils.root_has_file({ ".luacheckrc" })
          end,
        }),

        -- Shell
        -- nls.builtins.diagnostics.shellcheck,
        -- nls.builtins.code_actions.shellcheck,

        -- nls.builtins.formatting.shfmt,
        -- nls.builtins.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
      })
    end,
  },

  {
    "lvimuser/lsp-inlayhints.nvim",
    event = "LspAttach",
    opts = {},
    config = function(_, opts)
      require("lsp-inlayhints").setup(opts)
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("LspAttach_inlayhints", {}),
        callback = function(args)
          if not (args.data and args.data.client_id) then
            return
          end
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          require("lsp-inlayhints").on_attach(client, args.buf)
        end,
      })
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- "haskell-language-server",
      })
    end,
  },
}
