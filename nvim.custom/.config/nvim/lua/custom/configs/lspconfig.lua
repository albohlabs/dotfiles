local capabilities = require("plugins.configs.lspconfig").capabilities
local on_attach = require("plugins.configs.lspconfig").on_attach

-- import typescript plugin safely
local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
	return
end

local lspconfig = require("lspconfig")

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
	"bashls",
	"cssls",
	"dockerls",
	-- "emmet_ls",
	-- "eslint",
	"graphql",
	"hls",
	"html",
	"jsonls",
	"prismals",
	"tailwindcss",

	-- handled by jose-elias-alvarez/typescript.nvim
	-- "tsserver",

	-- handled by https://github.com/simrat39/rust-tools.nvim
	-- "rust_analyzer",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- configure typescript server with plugin
typescript.setup({
	server = {
		capabilities = capabilities,
		on_attach = on_attach,
	},
})
