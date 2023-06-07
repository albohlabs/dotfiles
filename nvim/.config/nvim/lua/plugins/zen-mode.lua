return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = {
      backdrop = 1,
      width = function()
        return math.min(120, vim.o.columns * 0.75)
      end,
      height = 0.9,
      options = {
        number = false,
        relativenumber = false,
        foldcolumn = "0",
        list = false,
        showbreak = "NONE",
        signcolumn = "no",
      },
    },
    plugins = {
      options = {
        cmdheight = 1,
        laststatus = 0,
      },
      gitsigns = true,
      tmux = true,
    },
    on_open = function() -- disable diagnostics and indent blankline
      vim.g.diagnostics_mode_old = vim.g.diagnostics_mode
      vim.g.diagnostics_mode = 0
      vim.g.indent_blankline_enabled_old = vim.g.indent_blankline_enabled
      vim.g.indent_blankline_enabled = false
    end,
    on_close = function() -- restore diagnostics and indent blankline
      vim.g.diagnostics_mode = vim.g.diagnostics_mode_old
      vim.g.indent_blankline_enabled = vim.g.indent_blankline_enabled_old
    end,
    wezterm = {
      enabled = false,
      font = "+4",
    },
  },
  keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
}
