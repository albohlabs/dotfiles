return {
  -- add folding range to capabilities
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },

  {
    "kevinhwang91/nvim-ufo",
    init = function()
      vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
      vim.opt.foldcolumn = "0"
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
      vim.opt.foldenable = true
    end,
    dependencies = { "kevinhwang91/promise-async" },
    event = "BufReadPost",
    keys = {
      { "zR", "<cmd>lua require('ufo').openAllFolds()<cr>",  desc = "Open folds" },
      { "zM", "<cmd>lua require('ufo').closeAllFolds()<cr>", desc = "Close folds" },
    },
    opts = {
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },
}
