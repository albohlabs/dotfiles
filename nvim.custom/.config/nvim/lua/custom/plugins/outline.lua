local M = {}

function M.setup()
  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap("n", "<leader>o", "<cmd>SymbolsOutline<CR>", opts)
end

function M.config()
  require("symbols-outline").setup {
    auto_preview = false,
    position = "left",
  }
end

return M
