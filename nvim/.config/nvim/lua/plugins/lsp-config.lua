return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        tsserver = {},

        jsonls = {
          -- lazy-load schemastore when needed
          on_new_config = function(new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
          end,
          settings = {
            json = {
              format = {
                enable = true,
              },
              validate = { enable = true },
            },
          },
        },
      },
      setup = {
        tsserver = function(_, opts)
          require("lazyvim.util").on_attach(function(client, buffer)
            if client.name == "tsserver" then
              -- stylua: ignore
              vim.keymap.set("n", "<leader>co", "<cmd>TypescriptOrganizeImports<CR>",
                { buffer = buffer, desc = "Organize Imports" })
              vim.keymap.set(
                "n",
                "<leader>cR",
                "<cmd>TypescriptRenameFile<CR>",
                { desc = "Rename File", buffer = buffer }
              )
            end
          end)
          require("typescript").setup({ server = opts })
          return true
        end,

        eslint = function(_, _)
          require("lazyvim.util").on_attach(function(client, _)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            end
            if client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
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
}
