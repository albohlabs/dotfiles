local M = {}

-- local map = nvchad.map
-- local ns_opt = { noremap = true, silent = true }

-- Sane movement defaults that works on long wrapped lines
-- map("", "j", "(v:count ? 'j' : 'gj')", { expr = true })
-- map("", "k", "(v:count ? 'k' : 'gk')", { expr = true })
-- map("", "<Down>", "(v:count ? 'j' : 'gj')", { expr = true })
-- map("", "<Up>", "(v:count ? 'k' : 'gk')", { expr = true })

-- Easier splits navigation
-- map("n", "<C-j>", "<C-w>j", ns_opt)
-- map("n", "<C-k>", "<C-w>k", ns_opt)
-- map("n", "<C-h>", "<C-w>h", ns_opt)
-- map("n", "<C-l>", "<C-w>l", ns_opt)

-- Use alt + hjkl to resize windows
-- map("n", "<M-j>", "<cmd>resize -2<CR>")
-- map("n", "<M-k>", "<cmd>resize +2<CR>")
-- map("n", "<M-h>", "<cmd>vertical resize -2<CR>")
-- map("n", "<M-l>", "<cmd>vertical resize +2<CR>")

-- Terminal window navigation
-- map("t", "<C-h>", "<C-\\><C-N><C-w>h", ns_opt)
-- map("t", "<C-j>", "<C-\\><C-N><C-w>j", ns_opt)
-- map("t", "<C-k>", "<C-\\><C-N><C-w>k", ns_opt)
-- map("t", "<C-l>", "<C-\\><C-N><C-w>l", ns_opt)
-- map("t", "<C-[><C-[>", "<C-\\><C-N>") -- double ESC to escape terminal

-- more intuitive wildmenu navigation
-- map("c", "<Up>", [[wildmenumode() ? "\<Left>" : "\<Up>"]], { expr = true })
-- map("c", "<Down>", [[wildmenumode() ? "\<Right>" : "\<Down>"]], { expr = true })
-- map("c", "<Left>", [[wildmenumode() ? "\<Up>" : "\<Left>"]], { expr = true })
-- map("c", "<Right>", [[wildmenumode() ? " \<BS>\<C-Z>" : "\<Right>"]], { expr = true })

-- command mode
-- map("c", "<C-a>", "<Home>")
-- map("c", "<C-e>", "<End>")

-- insert mode
-- map("i", "<C-j>", "<Down>")
-- map("i", "<C-k>", "<Up>")
-- map("i", "<C-h>", "<Left>")
-- map("i", "<C-l>", "<Right>")

-- CTRL-j and CTRL-k to next and previous buffer
-- CTRL-l and CTRL-h to next and previous tabs
-- map("", "<C-k>", ":bnext<CR>")
-- map("", "<C-j>", ":bprev<CR>")
-- -- map("", "<C-l>", ":tabn<CR>")
-- map("", "<C-h>", ":tabp<CR>")

-- map("n", "<leader>bb", ":buffers<cr>:b<space>")

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- shift + j to move down
-- map("x", "K", ":move '<-2<CR>gv-gv")
-- map("x", "J", ":move '>+1<CR>gv-gv")

-- edit & source init.lua
-- map('n', ',v', ':e $MYVIMRC<CR>')
-- map('n', ',s', ':luafile $MYVIMRC<CR>')

M.general = {
	n = {
		-- for navigation
		["<leader>ww"] = { "<cmd> HopWord <CR>", "word motion" },

		-- jumplist
		["<A-j>"] = { "<C-O>zz", "move back" },
		["<A-k>"] = { "<C-I>zz", "move forward" },

		["<leader>gb"] = {
			"<cmd> Gitsigns toggle_current_line_blame<CR>",
			"toggle git blame",
		},
		["<leader>gs"] = {
			"<cmd> Gitsigns preview_hunk<CR>",
			"show current hunk",
		},
		["<leader>gp"] = {
			"<cmd> Gitsigns prev_hunk<CR>",
			"go to previous hunk",
		},
		["<leader>gn"] = {
			"<cmd> Gitsigns next_hunk<CR>",
			"go to next hunk",
		},
		["<leader>gu"] = {
			"<cmd> Gitsigns reset_hunk<CR>",
			"undo current hunk",
		},
		["<leader>gd"] = {
			"<cmd> DiffviewOpen<CR>",
			"show git diff",
		},
		["<leader>gf"] = {
			"<cmd> DiffviewFileHistory %<CR>",
			"show file history",
		},

		-- https://github.com/rmagatti/auto-session#-commands
		["<leader>sd"] = { "<cmd> :DeleteSession <CR>", "Delete Session" },
		["<leader>ss"] = { "<cmd> :SaveSession <CR>", "Save Session" },
		["<leader>sr"] = { "<cmd> :RestoreSession <CR>", "Restore Session" },
	},
}

M.telescope = {
	n = {
		-- map("n", "<leader>fc", ":Telescope neoclip<CR>")

		-- https://github.com/nvim-telescope/telescope.nvim#pickers
		["<leader>fo"] = { "<cmd> Telescope lsp_document_symbols<CR>", "find symbols" },
		["<leader>fc"] = { "<cmd> Telescope git_status<CR>", "find git changes" },
		["<leader>fs"] = { "<cmd> SearchSession<CR>", "recent folders" },
		["<leader>fr"] = { "<cmd> Telescope registers<CR>", "find registers" },
		["<leader>fj"] = { "<cmd> Telescope jumplist<CR>", "find jumplist" },
		["<leader>fl"] = { "<cmd> Telescope resume<CR>", "resume" },
		["gr"] = { "<cmd> Telescope lsp_references<CR>", "find references" },
		["gd"] = { "<cmd> Telescope lsp_definitions<CR>", "find definitions" },
		["<leader>fd"] = { "<cmd> Telescope lsp_definitions<CR>", "find definitions" },
		["<leader>fi"] = { "<cmd> Telescope lsp_implementations<CR>", "find implementation" },
	},
}

M.lspconfig = {
	n = {
		["<leader>ca"] = { "<cmd> CodeActionMenu <CR>", "Code Action Menu" },
	},
}

return M
