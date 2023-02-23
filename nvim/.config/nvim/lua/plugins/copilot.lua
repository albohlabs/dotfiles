return {
  {
    "github/copilot.vim",
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
