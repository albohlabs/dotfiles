return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)
        telescope.load_extension("fzf")
        telescope.load_extension("notify")
        -- require("telescope").load_extension("fzf")
      end,
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-p>"] = require("telescope.actions.layout").toggle_preview,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
            -- ["<Esc>"] = require("telescope.actions").close,
          },
          n = { ["<C-p>"] = require("telescope.actions.layout").toggle_preview },
        },
        preview = { hide_on_startup = true },
      },
    },
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        "<leader>sB",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Browse Files",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
