return {
  {
    "ggandor/leap.nvim",
    enabled = false,
  },
  {
    "ggandor/flit.nvim",
    enabled = false,
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = true,
    keys = {
      {
        "<leader>gd",
        desc = "Diffview",
      },
      {
        "<leader>gdd",
        function()
          vim.cmd("DiffviewClose")
        end,
        desc = "Close Diffview tab",
      },
      {
        "<leader>gdf",
        function()
          vim.cmd("DiffviewFileHistory")
        end,
        desc = "File history",
      },
      {
        "<leader>gdm",
        function()
          vim.cmd("DiffviewOpen main")
        end,
        desc = "DiffviewOpen main",
      },
      {
        "<leader>gdn",
        function()
          vim.cmd("DiffviewOpen master")
        end,
        desc = "DiffviewOpen master",
      },
    },
  },

  {
    "mbbill/undotree",
    keys = {
      { "<leader>ut", "<Cmd>UndotreeToggle<CR>", desc = "toggle Undotree" },
    },
  },

  {
    "luukvbaal/statuscol.nvim",
    config = true,
  },

  {
    -- Diagnostics with virtual text. Does multiline well
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    enabled = false,
    event = "BufReadPost",
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        opts = {
          diagnostics = {
            virtual_text = false, -- Managed by `lsp_lines`
          },
        },
      },
    },
    opts = {},
    config = function(_, _)
      require("lsp_lines").setup()
      vim.diagnostic.config({ virtual_lines = true }) -- disable by default
    end,
  },
}
