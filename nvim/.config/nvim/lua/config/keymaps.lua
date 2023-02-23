-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- https://neovim.io/doc/user/vimindex.html

vim.keymap.set(
  "n",
  "<leader>xs",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- vim.keymap.set("n", "<C-j>", "<C-O>zz", { noremap = true, silent = true, desc = "move back" })
-- vim.keymap.set("n", "<C-k>", "<C-I>zz", { noremap = true, silent = true, desc = "move forward" })

-- https://github.com/christoomey/vim-tmux-navigator#custom-key-bindings
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to left" })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to lower" })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to upper" })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to right" })

vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

vim.keymap.del('n', '<S-h>')
vim.keymap.del('n', '<S-l>')
