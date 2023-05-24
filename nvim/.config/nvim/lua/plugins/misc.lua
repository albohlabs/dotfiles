return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
      },
      wezterm = {
        enabled = false,
        font = "+4",
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

  -- dims inactive portions of the code
  "folke/twilight.nvim",

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
    event = { "BufReadPost", "InsertEnter" },
    keys = {
      {
        "zR",
        function()
          require("ufo").openAllFolds()
        end,
        desc = "Open all folds",
      },
      {
        "zM",
        function()
          require("ufo").closeAllFolds()
        end,
        desc = "Close all folds",
      },
      {
        "zr",
        function()
          require("ufo").openFoldsExceptKinds()
        end,
        desc = "Fold less",
      },
      {
        "zm",
        function()
          require("ufo").closeFoldsWith()
        end,
        desc = "Fold more",
      },
      {
        "zp",
        function()
          require("ufo").peekFoldedLinesUnderCursor()
        end,
        desc = "Peek fold",
      },
    },
    opts = {
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },

  {
    "andymass/vim-matchup",
    event = "BufReadPost",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "status_manual" }
    end,
  },

  -- {
  --   "cshuaimin/ssr.nvim",
  --   keys = {
  --     {
  --       "<leader>sR",
  --       function()
  --         require("ssr").open()
  --       end,
  --       mode = { "n", "x" },
  --       desc = "Structural Replace",
  --     },
  --   },
  -- },

  {
    -- vs https://github.com/mrjones2014/smart-splits.nvim
    "aserowy/tmux.nvim",
    opts = {
      navigation = {
        enable_default_keybindings = false,
        persist_zoom = false,
      },
      resize = {
        enable_default_keybindings = false,
      },
      copy_sync = {
        enable = false,
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

      -- {
      --   "<C-Left>",
      --   function()
      --     require("tmux").resize_left()
      --   end,
      --   desc = "Tmux Resize Left",
      -- },
      -- {
      --   "<C-Down>",
      --   function()
      --     require("tmux").resize_bottom()
      --   end,
      --   desc = "Tmux Resize Bottom",
      -- },
      -- {
      --   "<C-Up>",
      --   function()
      --     require("tmux").resize_top()
      --   end,
      --   desc = "Tmux Resize Top",
      -- },
      -- {
      --   "<C-Right>",
      --   function()
      --     require("tmux").resize_right()
      --   end,
      --   desc = "Tmux Resize Right",
      -- },
    },
  },

  "gbprod/cutlass.nvim",

  -- open git file/repo
  {
    "almo7aya/openingh.nvim",
    cmd = { "OpenInGHFile", "OpenInGHRepo" },
    keys = {
      {
        "<leader>gr",
        "<Cmd>OpenInGHRepo<CR>",
        desc = "Opens origin repo",
      },
      {
        "<leader>gf",
        "<Cmd>OpenInGHFile<CR>",
        desc = "Opens origin file",
      },
    },
  },

  {
    "emmanueltouzery/agitator.nvim",
    keys = {
      {
        "<leader>gb",
        function()
          require("agitator").git_blame_toggle()
        end,
        desc = "Blame file",
      },
    },
  },
}
