local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
	-- b.formatting.elm_format,

	b.formatting.prettierd,
	b.diagnostics.eslint_d,
	b.code_actions.eslint_d,
	b.formatting.prismaFmt,

	-- b.diagnostics.tsc,
	-- https://github.com/jose-elias-alvarez/typescript.nvim#null-ls
	require("typescript.extensions.null-ls.code-actions"),

	b.code_actions.gitsigns,

	b.diagnostics.shellcheck,
	b.code_actions.shellcheck,

	b.formatting.rustfmt,

	-- Lua
	b.formatting.stylua,
	-- b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

	-- Shell
	b.formatting.shfmt,
	b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
}

null_ls.setup({
	sources = sources,

	-- format on save
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- TODO: on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format({ bufnr = bufnr })
					-- vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
