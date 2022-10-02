local M = {}

function M.setup()
  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap("n", "<space>g", "<cmd>Neogit<CR>", opts)
end

function M.config()
  require("neogit").setup {
    signs = {
      section = { "▸", "▾" },
      item = { "▸", "▾" },
      hunk = { "", "" },
    },

    integrations = {
      -- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `sindrets/diffview.nvim`.
      -- The diffview integration enables the diff popup, which is a wrapper around `sindrets/diffview.nvim`.
      --
      -- Requires you to have `sindrets/diffview.nvim` installed.
      -- use {
      --   'TimUntersberger/neogit',
      --   requires = {
      --     'nvim-lua/plenary.nvim',
      --     'sindrets/diffview.nvim'
      --   }
      -- }
      --
      diffview = true,
    },
  }
end

return M
