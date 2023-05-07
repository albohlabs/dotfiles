-- fname_width

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
      end,
    },
    opts = {
      defaults = {
        layout_config = {
          vertical = {
            width = 0.9,
          },
        },
        -- path_display = { "shorten", 2 },
        -- path_display = { "trail" },
        path_display = { "smart" },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        results_title = false,
        mappings = {
          i = {
            ["<C-p>"] = require("telescope.actions.layout").toggle_preview,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
            -- ["<Esc>"] = require("telescope.actions").close,
          },
          n = {
            o = "toggle_all",
            p = require("telescope.actions.layout").toggle_preview,
            J = require("telescope.actions").cycle_history_next,
            K = require("telescope.actions").cycle_history_prev,
          },
        },
        preview = { hide_on_startup = true },
      },
      pickers = {
        registers = { initial_mode = "insert", layout_config = { width = 0.7, height = 0.1 } },
        colorscheme = { layout_config = { width = 0.2, height = 0.7 } },
        spell_suggest = { layout_config = { width = 0.2, height = 0.7 } },
        command_history = { layout_config = { width = 0.6 } },
        buffers = {
          initial_mode = "normal",
          sort_lastused = true,
          ignore_current_buffer = true,
          sorter = require("telescope.sorters").get_substr_matcher(),
          show_all_buffers = true,
          layout_config = { width = 0.5 },
          mappings = { n = { x = "delete_buffer" } },
          sort_mru = true,
        },
        lsp_references = {
          initial_mode = "normal",
          jump_type = "never",
          include_current_line = true,
          fname_width = 60,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    },

    -- keys = {
    --   {
    --     "<leader>,",
    --     function()
    --       __telescope_buffers()
    --     end,
    --     desc = "Switch Buffer",
    --   },
    -- },
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
