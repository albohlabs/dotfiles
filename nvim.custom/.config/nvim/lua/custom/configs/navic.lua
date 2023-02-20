local present, navic = pcall(require, "nvim-navic")

if not present then
	return
end

local options = {
	icons = {
		File = " ",
		Module = " ",
		Namespace = " ",
		Package = " ",
		Class = " ",
		Method = " ",
		Property = " ",
		Field = " ",
		Constructor = " ",
		Enum = "練",
		Interface = "練",
		Function = " ",
		Variable = " ",
		Constant = " ",
		String = " ",
		Number = " ",
		Boolean = "◩ ",
		Array = " ",
		Object = " ",
		Key = " ",
		Null = "ﳠ ",
		EnumMember = " ",
		Struct = " ",
		Event = " ",
		Operator = " ",
		TypeParameter = " ",
	},
	highlight = true,
	separator = " > ",
	depth_limit = 0,
	depth_limit_indicator = "..",
}

navic.setup(options)

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		if vim.tbl_contains({ "null-ls" }, client.name) then
			return
		end

		if not client.server_capabilities.documentSymbolProvider then
			return
		end

		require("nvim-navic").attach(client, bufnr)
	end,
})
