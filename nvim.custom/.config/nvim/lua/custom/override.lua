-- overriding default plugin configs!

local M = {}

M.treesitter = {
	auto_install = true,

	ensure_installed = {
		"vim",
		"html",
		"css",
		"javascript",
		"typescript",
		"json",
		"toml",
		"markdown",
		"bash",
		"lua",
		"haskell",
	},
}

M.nvimtree = {
	git = {
		enable = true,
		ignore = false,
	},

	view = {
		width = 35,
		side = "right",
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.telescope = {
	extensions = {
		-- fd is needed
		media_files = {
			filetypes = { "png", "webp", "jpg", "jpeg" },
		},
	},

	defaults = {
		layout_config = {
			width = 0.999999,
			height = 0.99999,
		},
	},
}

-- https://github.com/williamboman/mason.nvim
M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev
		"css-lsp",
		"deno",
		"emmet-ls",
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

		-- other
		"haskell-language-server",
	},
}

M.cmp = {
	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
		-- { name = "buffer" },
		-- { name = "nvim_lua" },
		-- { name = "luasnip" },
	},
}

return M
