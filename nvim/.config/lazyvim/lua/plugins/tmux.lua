return {
  "aserowy/tmux.nvim",
  event = function()
    if vim.fn.executable("$tmux") == 1 then
      return "VeryLazy"
    end
  end,
  opts = {
    navigation = {
      enable_default_keybindings = false,
    },
    resize = {
      enable_default_keybindings = true,
    },
    copy_sync = {
      enable = true,
    },
  },
  keys = {
    {
      "<C-h>",
      function()
        require("tmux").move_left()
      end,
      desc = "Tmux Move Left",
    },
    {
      "<C-j>",
      function()
        require("tmux").move_bottom()
      end,
      desc = "Tmux Move Bottom",
    },
    {
      "<C-k>",
      function()
        require("tmux").move_top()
      end,
      desc = "Tmux Move Top",
    },
    {
      "<C-l>",
      function()
        require("tmux").move_right()
      end,
      desc = "Tmux Move Right",
    },
  },
}
