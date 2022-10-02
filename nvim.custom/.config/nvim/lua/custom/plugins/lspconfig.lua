local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- disable and use lsp_lines.nvim
vim.diagnostic.config {
  virtual_text = false,
}

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
  "bashls",
  "cssls",
  "dockerls",
  "emmet_ls",
  -- "eslint",
  -- "graphql",
  "hls",
  "html",
  "jsonls",
  "prismals",
  -- "tailwindcss",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
