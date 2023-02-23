return {
	----------------------------------------- default plugins ------------------------------------------

	{ "folke/which-key.nvim", enabled = true },

	{
		"neovim/nvim-lspconfig",
		-- override nvChad config https://github.com/NvChad/NvChad/blob/main/lua/plugins/init.lua#L112
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
		dependencies = {
			-- https://github.com/jose-elias-alvarez/typescript.nvim
			"jose-elias-alvarez/typescript.nvim",
		},
	},

	-- https://github.com/ray-x/lsp_signature.nvim
	{ "ray-x/lsp_signature.nvim", config = true },

	{
		"nvim-tree/nvim-tree.lua",
		opts = {

			git = {
				enable = true,
				ignore = false,
			},

			view = {
				width = 35,
				-- side = "right",
			},

			renderer = {
				highlight_git = true,
				icons = {
					show = {
						git = true,
					},
				},
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			event = { "BufReadPost", "BufNewFile" },

			auto_install = true,

			ensure_installed = {
				"bash",
				"css",
				"haskell",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"rust",
				"toml",
				"tsx",
				"typescript",
				"vim",
			},
		},

		dependencies = {
			-- https://github.com/nvim-treesitter/nvim-treesitter-context
			{ "nvim-treesitter/nvim-treesitter-context", lazy = false },

			-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
	},

	{
		"nvim-telescope/telescope.nvim",
		opts = {
			extensions = {
				-- fd is needed
				media_files = {
					filetypes = { "png", "webp", "jpg", "jpeg" },
				},
			},

			defaults = {
				layout_config = {
					-- width = 0.999999,
					-- height = 0.99999,
				},
			},
		},

		dependencies = {
			-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},

		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)
			telescope.load_extension("fzf")
		end,
	},

	-- https://github.com/williamboman/mason.nvim/blob/main/PACKAGES.md
	{
		"williamboman/mason.nvim",
		opts = {

			ensure_installed = {
				-- lua stuff
				"lua-language-server",
				"stylua",

				-- web dev
				"css-lsp",
				"cssmodules-language-server",
				-- "deno",
				-- "emmet-ls",
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
				"bash-language-server",

				-- "haskell-language-server",

				"rust-analyzer",
				"codelldb",
			},
		},

		dependencies = {
			-- https://github.com/williamboman/mason-lspconfig.nvim
			"williamboman/mason-lspconfig.nvim",

			-- https://github.com/jayp0521/mason-null-ls.nvim
			{
				"jayp0521/mason-null-ls.nvim",
				-- lazy = false,
				opts = {
					automatic_installation = true,
				},
			},
		},
	},

	{
		"hrsh7th/nvim-cmp",
		opts = {
			sources = {
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				-- { name = "path" },
				-- { name = "nvim_lua" },
				--{ name = "luasnip" },
			},
		},
	},

	--------------------------------------------- custom plugins ----------------------------------------------

	-- library used by other plugins
	{ "nvim-lua/plenary.nvim", lazy = true },

	-- makes some plugins dot-repeatable like leap
	{ "tpope/vim-repeat", event = "VeryLazy" },

	-- https://github.com/editorconfig/editorconfig-vim
	"editorconfig/editorconfig-vim",

	-- https://github.com/folke/persistence.nvim
	-- session management
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = { options = { "buffers", "curdir", "tabpages", "winsize", "help" } },
	  -- stylua: ignore
	  keys = {
	    { "<leader>qr", function() require("persistence").load() end, desc = "Restore Session" },
	    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
	    { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
	  },
	},

	-- https://github.com/weilbith/nvim-code-action-menu
	{ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" },

	-- https://github.com/windwp/nvim-ts-autotag
	-- autoclose tags in html, jsx only
	{
		"windwp/nvim-ts-autotag",
		ft = { "html", "javascriptreact" },
		config = function()
			local present, autotag = pcall(require, "nvim-ts-autotag")

			if present then
				autotag.setup()
			end
		end,
	},

	-- https://github.com/unblevable/quick-scope
	-- highlight unique character in every word on a line
	{ "unblevable/quick-scope", event = { "BufReadPost", "BufNewFile" } },

	-- https://github.com/onsails/lspkind.nvim
	{
		"onsails/lspkind-nvim",
		module = "lspkind",
		config = function()
			require("lspkind").init({
				mode = "symbol_text",
				preset = "codicons",
			})
		end,
	},

	-- Useful status updates for LSP
	-- https://github.com/j-hui/fidget.nvim
	{ "j-hui/fidget.nvim", lazy = false, config = true },

	-- search/replace in multiple files
	-- https://github.com/nvim-pack/nvim-spectre
	{
		"windwp/nvim-spectre",
    -- stylua: ignore
    keys = {
      { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
    },
	},

	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- https://github.com/SmiteshP/nvim-navic
	{
		"SmiteshP/nvim-navic",
		enabled = false,
		lazy = false,
		-- event = "BufRead",
		config = function()
			require("custom.configs.navic")
		end,
	},

	-- https://github.com/sindrets/diffview.nvim
	{ "sindrets/diffview.nvim", enabled = false, config = true },

	-- https://github.com/TimUntersberger/neogit
	{
		"TimUntersberger/neogit",
		-- after = "diffview.nvim",
		cmd = "Neogit",
		keys = {
			{ "<space>g", "<cmd>Neogit<cr>", desc = "Open Neogit" },
		},
		opts = {
			signs = {
				section = { "▸", "▾" },
				item = { "▸", "▾" },
				hunk = { "", "" },
			},
		},
	},

	-- https://github.com/simrat39/symbols-outline.nvim
	{
		"simrat39/symbols-outline.nvim",
		cmd = "SymbolsOutline",
		keys = {
			{ "<leader>co", "<cmd>SymbolsOutline<cr>", desc = "Toggle symbols outline" },
		},
		opts = {
			auto_preview = false,
			position = "right",

			highlight_hovered_item = false,
			auto_unfold_hover = false,
			autofold_depth = 1,
		},
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		-- lazy = false,
		config = function()
			require("custom.configs.null-ls")
		end,
		dependencies = { "mason.nvim" },
	},

	{ "christoomey/vim-tmux-navigator", lazy = false },

	-- ui components
	{ "MunifTanjim/nui.nvim", lazy = true, enabled = false },

	-- Better `vim.notify()`
	{
		"rcarriga/nvim-notify",
		enabled = false,
    -- stylua: ignore
		keys = {
			{ "<leader>un", function() require("notify").dismiss({ silent = true, pending = true }) end, desc = "Delete all Notifications", },
		},
		opts = {
			timeout = 3000,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
		},
	},

	-- https://github.com/folke/noice.nvim
	-- noicer ui
	{
		"folke/noice.nvim",
		enabled = false,
		event = "VeryLazy",
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
			},
		},
    -- stylua: ignore
    keys = {
      { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
      { "<leader>snl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
      { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
      { "<leader>sna", function() require("noice").cmd("all") end, desc = "Noice All" },
      { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
      { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
    },
	},

	-- https://github.com/folke/trouble.nvim
	{
		"folke/trouble.nvim",
		cmd = { "TroubleToggle", "Trouble" },
		opts = { use_diagnostic_signs = true },
    -- stylua: ignore
		keys = {
			{ "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
			{ "<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
			{ "<leader>xL", "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
			{ "<leader>xQ", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
		},
	},

	-- https://github.com/folke/todo-comments.nvim
	{
		"folke/todo-comments.nvim",
		cmd = { "TodoTrouble", "TodoTelescope" },
		event = { "BufReadPost", "BufNewFile" },
		config = true,
    -- stylua: ignore
		keys = {
			-- { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment", },
			-- { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment", },
			{ "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
			{ "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
			{ "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
		},
	},

	-- https://github.com/kevinhwang91/nvim-ufo
	-- { "kevinhwang91/nvim-ufo",
	-- 	dependencies = "kevinhwang91/promise-async",
	-- 	config = function()
	-- 		require("ufo").setup({
	-- 			provider_selector = function()
	-- 				return { "treesitter", "indent" }
	-- 			end,
	-- 		})
	-- 	end,
	-- },

	-- https://github.com/anuvyklack/pretty-fold.nvim
	{ "anuvyklack/pretty-fold.nvim", config = true },

	-- https://github.com/MrcJkb/haskell-tools.nvim
	-- {"MrcJkb/haskell-tools.nvim",
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

	-- buffer remove
	{
		"echasnovski/mini.bufremove",
    -- stylua: ignore
		keys = {
			{ "<leader>x", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer", },
			{ "<leader>bD", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)", },
		},
	},

	-- https://github.com/simrat39/rust-tools.nvim
	{
		"simrat39/rust-tools.nvim",
		enabled = false,
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
					settings = {
						{ "rust-analyzer", checkOnSave = {
							command = "clippy",
						} },
					},
				},
			})
		end,
	},

	-- https://github.com/tpope/vim-surround
	{ "tpope/vim-surround", lazy = false },

	-- https://github.com/RRethy/vim-illuminate
	{
		"RRethy/vim-illuminate",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			delay = 200,
			providers = { "lsp", "treesitter", "regex" },
			filetypes_denylist = { "dashboard", "NvimTree", "markdown", "rmd", "tex" },
			under_cursor = true,
			modes_denylist = {},
			large_file_overrides = 1000,
			large_file_config = {},
		},
		config = function(_, opts)
			require("illuminate").configure(opts)

			vim.api.nvim_set_hl(0, "IlluminatedWordText", { italic = false, bg = "#53565d" })
			vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "IlluminatedWordText" })
			vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "IlluminatedWordText" })
		end,
	},

	-- https://github.com/b0o/schemastore.nvim
	{
		"b0o/schemastore.nvim",
		ft = "json",
		config = function()
			require("lspconfig").jsonls.setup({
				settings = {
					json = {
						schemas = require("schemastore").json.schemas(),
						validate = { enable = true },
					},
				},
			})
		end,
	},

	{
		"github/copilot.vim",
		-- lazy = false,
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			vim.cmd([[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]])
			vim.cmd([[imap <silent><script><expr> <C-L> copilot#Next()]])
			vim.cmd([[imap <silent><script><expr> <C-H> copilot#Previous()]])
			vim.cmd([[imap <silent><script><expr> <C-K> copilot#Suggest()]])

			vim.g.copilot_no_tab_map = true
		end,
	},
}
