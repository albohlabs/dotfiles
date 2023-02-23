return {
  {
    "github/copilot.vim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      vim.keymap.set("i", "<C-j>", 'copilot#Accept("")', { silent = true, expr = true, desc = "Copilot dummy accept" })
      vim.keymap.set("i", "<C-l>", 'copilot#Next("")', { silent = true, expr = true, desc = "Copilot dummy next" })
      vim.keymap.set("i", "<C-k>", 'copilot#Suggest("")', { silent = true, expr = true, desc = "Copilot dummy suggest" })
      vim.keymap.set("i", "<C-h>", 'copilot#Previous("")', { silent = true, expr = true, desc = "Copilot dummy prev" })
      -- vim.cmd([[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]])
      -- vim.cmd([[imap <silent><script><expr> <C-L> copilot#Next()]])
      -- vim.cmd([[imap <silent><script><expr> <C-H> copilot#Previous()]])
      -- vim.cmd([[imap <silent><script><expr> <C-K> copilot#Suggest()]])

      vim.g.copilot_no_tab_map = true
    end,
  },
}
