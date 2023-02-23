return {
  -- "github/copilot.vim",
  -- event = { "BufReadPost", "BufNewFile" },
  -- config = function()
  --   vim.keymap.set("i", "<C-j>", 'copilot#Accept("")', { silent = true, expr = true, desc = "Copilot dummy accept" })
  --   vim.keymap.set("i", "<C-l>", 'copilot#Next("")', { silent = true, expr = true, desc = "Copilot dummy next" })
  --   vim.keymap.set("i", "<C-k>", 'copilot#Suggest("")', { silent = true, expr = true, desc = "Copilot dummy suggest" })
  --   vim.keymap.set("i", "<C-h>", 'copilot#Previous("")', { silent = true, expr = true, desc = "Copilot dummy prev" })
  --   -- vim.cmd([[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]])
  --   -- vim.cmd([[imap <silent><script><expr> <C-L> copilot#Next()]])
  --   -- vim.cmd([[imap <silent><script><expr> <C-H> copilot#Previous()]])
  --   -- vim.cmd([[imap <silent><script><expr> <C-K> copilot#Suggest()]])

  --   vim.g.copilot_no_tab_map = true
  -- end,
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    keys = {
      {
        "<C-j>",
        function()
          require("copilot.suggestion").accept()
        end,
        desc = "Copilot Accept",
        mode = "i",
      }
      -- {
      --   "<C-l>",
      --   function()
      --     require("copilot.suggestion").next()
      --   end,
      --   desc = "Copilot Next",
      --   mode = "i",
      -- },
      -- {
      --   "<C-h>",
      --   function()
      --     require("copilot.suggestion").prev()
      --   end,
      --   desc = "Copilot Prev",
      --   mode = "i",
      -- }
    },
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = false,
        },
      },
      panel = { enabled = false },
    },
  },
}
