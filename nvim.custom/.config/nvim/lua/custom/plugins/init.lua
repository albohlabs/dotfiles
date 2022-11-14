local overrides = require("custom.plugins.overrides")

return {

	----------------------------------------- default plugins ------------------------------------------

	["folke/which-key.nvim"] = {
		disable = false,
	},

	["neovim/nvim-lspconfig"] = {
		-- override nvChad config https://github.com/NvChad/NvChad/blob/main/lua/plugins/init.lua#L112
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	-- override default configs
	["kyazdani42/nvim-tree.lua"] = { override_options = overrides.nvimtree },
	["nvim-treesitter/nvim-treesitter"] = { override_options = overrides.treesitter },
	["nvim-telescope/telescope.nvim"] = { override_options = overrides.telescope },
	["williamboman/mason.nvim"] = { override_options = overrides.mason },
	["hrsh7th/nvim-cmp"] = { override_options = overrides.cmp },

	--------------------------------------------- custom plugins ----------------------------------------------

	-- https://github.com/editorconfig/editorconfig-vim
	["editorconfig/editorconfig-vim"] = {},

	-- session management
	["rmagatti/auto-session"] = {
		config = function()
			require("custom.plugins.autosession")
		end,
	},

	-- https://github.com/weilbith/nvim-code-action-menu
	["weilbith/nvim-code-action-menu"] = {
		cmd = "CodeActionMenu",
	},

	-- https://github.com/windwp/nvim-ts-autotag
	-- autoclose tags in html, jsx only
	["windwp/nvim-ts-autotag"] = {
		ft = { "html", "javascriptreact" },
		after = "nvim-treesitter",
		config = function()
			local present, autotag = pcall(require, "nvim-ts-autotag")

			if present then
				autotag.setup()
			end
		end,
	},

	["nvim-treesitter/nvim-treesitter-context"] = {
		after = "nvim-treesitter",
	},

	-- https://github.com/unblevable/quick-scope
	["unblevable/quick-scope"] = {},

	-- https://github.com/onsails/lspkind.nvim
	["onsails/lspkind-nvim"] = {
		module = "lspkind",
		config = function()
			require("lspkind").init({
				mode = "symbol_text",
				preset = "codicons",
			})
		end,
	},

	-- https://github.com/SmiteshP/nvim-navic
	["SmiteshP/nvim-navic"] = {
		requires = "neovim/nvim-lspconfig",
		after = { "lspkind-nvim" },
		event = "BufRead",
		config = function()
			require("custom.plugins.navic")
		end,
	},

	-- https://github.com/jose-elias-alvarez/typescript.nvim
	["jose-elias-alvarez/typescript.nvim"] = {},

	-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
	["nvim-treesitter/nvim-treesitter-textobjects"] = { after = "nvim-treesitter" },

	-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
	["nvim-telescope/telescope-fzf-native.nvim"] = {
		after = "telescope.nvim",
		run = "make",
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},

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

	-- https://github.com/simrat39/symbols-outline.nvim
	["simrat39/symbols-outline.nvim"] = {
		opt = true,
		cmd = "SymbolsOutline",
		setup = require("custom.plugins.outline").setup,
		config = require("custom.plugins.outline").config,
	},

	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

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

	["christoomey/vim-tmux-navigator"] = {},

	-- https://github.com/folke/noice.nvim
	-- ["folke/noice.nvim"] = {
	-- 	event = "VimEnter",
	-- 	config = function()
	-- 		require("noice").setup({
	-- 			{
	-- 				lsp = {
	-- 					-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
	-- 					override = {
	-- 						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	-- 						["vim.lsp.util.stylize_markdown"] = true,
	-- 						["cmp.entry.get_documentation"] = true,
	-- 					},
	-- 				},
	-- 				-- you can enable a preset for easier configuration
	-- 				presets = {
	-- 					bottom_search = true, -- use a classic bottom cmdline for search
	-- 					command_palette = true, -- position the cmdline and popupmenu together
	-- 					long_message_to_split = true, -- long messages will be sent to a split
	-- 					inc_rename = false, -- enables an input dialog for inc-rename.nvim
	-- 					lsp_doc_border = true, -- add a border to hover docs and signature help
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- 	requires = {
	-- 		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	-- 		"MunifTanjim/nui.nvim",
	-- 		"rcarriga/nvim-notify",
	-- 	},
	-- },

	-- https://github.com/folke/trouble.nvim
	["folke/trouble.nvim"] = {
		requires = "kyazdani42/nvim-web-devicons",
	},

	-- https://github.com/folke/todo-comments.nvim
	["folke/todo-comments.nvim"] = {
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	},

	-- https://github.com/kevinhwang91/nvim-ufo
	-- ["kevinhwang91/nvim-ufo"] = {
	-- 	requires = "kevinhwang91/promise-async",
	-- 	config = function()
	-- 		require("ufo").setup({
	-- 			provider_selector = function()
	-- 				return { "treesitter", "indent" }
	-- 			end,
	-- 		})
	-- 	end,
	-- },

	-- https://github.com/anuvyklack/pretty-fold.nvim
	["anuvyklack/pretty-fold.nvim"] = {
		config = function()
			require("pretty-fold").setup()
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

	-- https://github.com/simrat39/rust-tools.nvim
	["simrat39/rust-tools.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("rust-tools").setup({
				server = {
					on_attach = function(_, bufnr)
						vim.keymap.set("n", "K", require("rust-tools").hover_actions.hover_actions, { buffer = bufnr })

						vim.keymap.set(
							"n",
							"<Leader>ca",
							require("rust-tools").code_action_group.code_action_group,
							{ buffer = bufnr }
						)
					end,
				},
			})
		end,
	},

	-- https://github.com/tpope/vim-surround
	["tpope/vim-surround"] = {},
}
