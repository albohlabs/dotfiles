function _G.toggleterm_wrapper(cmd)
  local Terminal = require("toggleterm.terminal").Terminal
  local term = Terminal:new({
    cmd = cmd,
    direction = "float",
    hidden = true,
  })
  term:toggle()
end

return {
  -- https://github.com/AstroNvim/AstroNvim/blob/291afa15dd20bd3062d639694859526c93957808/lua/plugins/core.lua#L98
  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm", "TermExec" },
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.3
        end
      end,
      open_mapping = "<C-\\>",
      direction = "float",
      float_opts = {
        border = "curved",
        winblend = 3,
      },
      shading_factor = 2,
      start_in_insert = true,
    },
    config = function(_, options)
      require("toggleterm").setup(options)

      local set_terminal_keymaps = function()
        local opts = { buffer = 0 }

        -- vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        -- vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
      end

      -- if you only want these mappings for toggle term use term://*toggleterm#* instead
      -- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*",
        callback = set_terminal_keymaps,
      })
    end,
    keys = {
      {
        "<leader>tl",
        function()
          toggleterm_wrapper("lazygit")
        end,
        desc = " Git",
      },
      {
        "<leader>gg",
        function()
          toggleterm_wrapper("lazygit")
        end,
        desc = " Git",
      },
      {
        "<leader>tr",
        function()
          toggleterm_wrapper("ranger")
        end,
        desc = "ranger",
      },
      {
        "<leader>tn",
        function()
          toggleterm_wrapper("node")
        end,
        desc = "node",
      },
      { "<leader>ft", "<cmd>ToggleTerm direction=float<cr>", desc = " ToggleTerm" },
      { "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", desc = " ToggleTerm" },
      { "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = " ToggleTerm horizontal split" },
      { "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = " ToggleTerm vertical split" },
    },
  },
}
