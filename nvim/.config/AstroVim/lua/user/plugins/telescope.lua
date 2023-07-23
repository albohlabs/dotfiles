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
    {
      "<leader>fs",
      function()
        require("telescope.builtin").lsp_document_symbols {
          symbols = {
            "Class",
            "Constant",
            "Constructor",
            "Enum",
            "Field",
            "Function",
            "Interface",
            "Method",
            "Module",
            "Property",
            "Struct",
            "Struct",
            "Trait",
            "Variable",
          },
        }
      end,
      desc = "Goto Symbol",
    },
  },
  opts = {
    defaults = {
      layout_config = {
        vertical = {
          width = 0.9,
          height = 0.9,
        },
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
      preview = { hide_on_startup = true },
    },
    pickers = {
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
      lsp_document_symbols = {
        fname_width = 10,
        trim_text = true,
        layout_strategy = "vertical",
        layout_config = {
          preview_cutoff = 0, -- Preview should always show (unless previewer = false)
          width = function(_, max_columns, _) return math.min(max_columns, 9) end,

          --height = function(_, _, max_lines)
          --  return math.min(max_lines, 15)
          --end,
          vertical = {
            width = 0.5,
          },
        },
      },
    },
  },
}
