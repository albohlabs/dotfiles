return {
	-- https://github.com/editorconfig/editorconfig-vim
	["editorconfig/editorconfig-vim"] = {},

	-- https://github.com/jayp0521/mason-null-ls.nvim
	["jayp0521/mason-null-ls.nvim"] = {
		after = {
			"null-ls.nvim",
			"mason.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				automatic_installation = true,
			})
			require("mason-null-ls").check_install(true)
		end,
	},

	-- session management
	["rmagatti/auto-session"] = {
		config = function()
			require("custom.plugins.autosession")
		end,
	},
	-- ["rmagatti/session-lens"] = {
	-- 	cmd = "SearchSession",
	-- 	requires = {
	-- 		"rmagatti/auto-session",
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("session-lens").setup()
	-- 	end,
	-- },

	-- https://git.sr.ht/~whynothugo/lsp_lines.nvim
	-- ["https://git.sr.ht/~whynothugo/lsp_lines.nvim"] = {
	--   config = function()
	--     require("lsp_lines").setup()
	--   end,
	-- },

	-- https://github.com/weilbith/nvim-code-action-menu
	["weilbith/nvim-code-action-menu"] = {
		cmd = "CodeActionMenu",
	},

	-- https://github.com/windwp/nvim-ts-autotag
	["windwp/nvim-ts-autotag"] = {
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	-- https://github.com/p00f/nvim-ts-rainbow
	-- ["p00f/nvim-ts-rainbow"] = {
	-- 	config = function()
	-- 		require("nvim-treesitter.configs").setup({
	-- 			rainbow = {
	-- 				enable = true,
	-- 			},
	-- 		})
	-- 	end,
	-- },

	["nvim-treesitter/nvim-treesitter-context"] = {
		after = "nvim-treesitter",
	},

	-- code navigation and highlight
	-- ["phaazon/hop.nvim"] = {
	--   cmd = {
	--     "HopAnywhere",
	--     "HopChar1",
	--     "HopChar2",
	--     "HopLine",
	--     "HopLineStart",
	--     "HopVertical",
	--     "HopPattern",
	--     "HopWord",
	--   },
	--   branch = "v2",
	--   config = function()
	--     require("hop").setup()
	--   end,
	-- },

	["unblevable/quick-scope"] = {},

	-- breadcrumbs
	["SmiteshP/nvim-navic"] = {
		config = function()
			require("custom.plugins.navic")
		end,
	},

	-- UI improvement
	-- ["luukvbaal/stabilize.nvim"] = {},

	-- ["nvim-treesitter/nvim-treesitter-textobjects"] = { after = { "nvim-treesitter" } },
	-- ["RRethy/nvim-treesitter-textsubjects"] = { after = { "nvim-treesitter" } },

	-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
	-- ["nvim-telescope/telescope-fzf-native.nvim"] = { run = "make" },

	-- https://github.com/AckslD/nvim-neoclip.lua
	-- [ "AckslD/nvim-neoclip.lua"]= {
	--    -- opt = true,
	--    requires = {
	--      -- you'll need at least one of these
	--      {'nvim-telescope/telescope.nvim'},
	--      -- {'ibhagwan/fzf-lua'},
	--    },
	--    config = function()
	--      require('neoclip').setup()
	--      require('telescope').load_extension('neoclip')
	--    end,
	--  },

	-- https://github.com/sindrets/diffview.nvim
	["sindrets/diffview.nvim"] = {
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
		},
		after = "plenary.nvim",
		config = function()
			require("diffview").setup({})
		end,
	},

	-- https://github.com/TimUntersberger/neogit
	["TimUntersberger/neogit"] = {
		after = "diffview.nvim",
		requires = "nvim-lua/plenary.nvim",
		cmd = "Neogit",
		setup = require("custom.plugins.neogit").setup,
		config = require("custom.plugins.neogit").config,
	},

	-- https://github.com/sudormrfbin/cheatsheet.nvim
	-- ["sudormrfbin/cheatsheet.nvim"] = {
	--   cmd = { "Cheatsheet" },
	--   requires = {
	--     { "nvim-lua/popup.nvim" },
	--     { "nvim-lua/plenary.nvim" },
	--   },
	-- },

	-- https://github.com/simrat39/symbols-outline.nvim
	["simrat39/symbols-outline.nvim"] = {
		opt = true,
		cmd = "SymbolsOutline",
		setup = require("custom.plugins.outline").setup,
		config = require("custom.plugins.outline").config,
	},

	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	["christoomey/vim-tmux-navigator"] = {},

	-- ["folke/tokyonight.nvim"] = {},

	-- https://github.com/folke/noice.nvim
	["folke/noice.nvim"] = {
		event = "VimEnter",
		after = "nvim-telescope/telescope.nvim",
		config = function()
			require("noice").setup()
			require("telescope").load_extension("noice")
		end,
		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	["folke/which-key.nvim"] = {
		disable = false,
	},

	-- https://github.com/folke/trouble.nvim
	["folke/trouble.nvim"] = {
		requires = "kyazdani42/nvim-web-devicons",
	},

	["folke/todo-comments.nvim"] = {
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},

	-- https://github.com/kevinhwang91/nvim-ufo
	["kevinhwang91/nvim-ufo"] = {
		requires = "kevinhwang91/promise-async",
		config = function()
			require("ufo").setup({
				provider_selector = function()
					return { "treesitter", "indent" }
				end,
			})
		end,
	},

	-- https://github.com/MrcJkb/haskell-tools.nvim
	-- ["MrcJkb/haskell-tools.nvim"] = {
	-- 	requires = {
	-- 		"neovim/nvim-lspconfig",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- 	config = function()
	-- 		local ht = require("haskell-tools")

	-- 		local opts = { noremap = true, silent = true, buffer = bufnr }
	-- 		ht.setup({
	-- 			hls = {
	-- 				-- See nvim-lspconfig's  suggested configuration for keymaps, etc.
	-- 				on_attach = function()
	-- 					-- haskell-language-server relies heavily on codeLenses,
	-- 					-- so auto-refresh (see advanced configuration) is enabled by default
	-- 					vim.keymap.set("n", "<space>ca", vim.lsp.codelens.run, opts)
	-- 					vim.keymap.set("n", "<space>hs", ht.hoogle.hoogle_signature, opts)
	-- 					-- default_on_attach(client, bufnr)  -- if defined, see nvim-lspconfig
	-- 				end,
	-- 			},
	-- 		})
	-- 	end,
	-- },
}
