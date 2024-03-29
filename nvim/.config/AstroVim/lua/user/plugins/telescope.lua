return {
  "telescope.nvim",
  keys = {
    {
      "<leader>fg",
      "<cmd>lua require('telescope.builtin').git_status()<cr>",
      desc = "Find Git Status",
    },
    {
      "<leader>fl",
      "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
      desc = "Find ripgrep",
    },
  },
  -- https://github.com/nvim-telescope/telescope.nvim/blob/master/doc/telescope.txt
  opts = {
    defaults = {
      -- preview = { hide_on_startup = true },
      layout_config = {
        preview_cutoff = 0,
        -- full screen
        width = { padding = 0 },
        height = { padding = 0 },
      },
      mappings = {
        i = {
          ["<C-n>"] = require("telescope.actions").move_selection_next,
          ["<C-p>"] = require("telescope.actions").move_selection_previous,

          ["<C-l>"] = require("telescope.actions.layout").toggle_preview,

          -- open in split/vsplit/tab
          ["<C-w>s"] = require("telescope.actions").select_horizontal,
          ["<C-x>"] = false, -- select_horizontal,
          ["<C-w>v"] = require("telescope.actions").select_vertical,
          ["<C-v>"] = false, -- select_vertical,
          ["<C-w>t"] = require("telescope.actions").select_tab,
          ["<C-t>"] = false, -- select_tab,

          -- ["<C-j>"] = require("telescope.actions").move_selection_next,
          -- ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<C-e>"] = function(picker)
            require("telescope.actions").send_selected_to_qflist(picker)
            vim.cmd "copen"
          end,
          ["<C-c>"] = require("telescope.actions").close,
        },
        n = {
          ["<C-n>"] = require("telescope.actions").move_selection_next,
          ["<C-p>"] = require("telescope.actions").move_selection_previous,

          -- preview
          ["<C-l>"] = require("telescope.actions.layout").toggle_preview,

          -- open in split/vsplit/tab
          ["<C-w>s"] = require("telescope.actions").select_horizontal,
          ["<C-x>"] = false, -- select_horizontal,
          ["<C-w>v"] = require("telescope.actions").select_vertical,
          ["<C-v>"] = false, -- select_vertical,
          ["<C-w>t"] = require("telescope.actions").select_tab,
          ["<C-t>"] = false, -- select_tab,

          o = "toggle_all",
          ["<C-e>"] = function(picker)
            require("telescope.actions").send_selected_to_qflist(picker)
            vim.cmd "copen"
          end,

          -- quit
          ["<ESC>"] = require("telescope.actions").close,
          ["<C-c>"] = require("telescope.actions").close,
          ["<C-[>"] = require("telescope.actions").close,
          ["q"] = require("telescope.actions").close,
          ["Q"] = require("telescope.actions").close,
        },
      },
    },
    pickers = {
      commands = {
        layout_config = {
          height = 0.63,
          width = 0.78,
        },
      },
      command_history = {
        layout_config = {
          height = 0.63,
          width = 0.58,
        },
      },
      lsp_definition = {
        include_declaration = false,
        show_line = false,
      },
      lsp_references = {
        include_declaration = false,
        show_line = false,
      },
      buffers = {
        initial_mode = "normal",
        sort_lastused = true,
        ignore_current_buffer = true,
        mappings = {
          n = {
            ["<C-x>"] = "delete_buffer",
          },
          i = {
            ["<C-x>"] = "delete_buffer",
          },
        },
        sort_mru = true,
      },
    },
  },
}
