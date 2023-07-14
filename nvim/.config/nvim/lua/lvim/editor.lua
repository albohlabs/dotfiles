local Util = require("lazyvim.util")

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
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-rg.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function(_, opts)
          local telescope = require("telescope")
          telescope.setup(opts)
          telescope.load_extension("fzf")
          telescope.load_extension("notify")
        end,
      },
    },
    keys = {
      {
        "<leader>sm",
        Util.telescope("lsp_document_symbols", {
          symbols = {
            "Function",
            "Method",
          },
        }),
        desc = "Goto Symbol (methods, functions)",
      },
      {
        "<leader>sl",
        "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
        desc = "Find ripgrep",
      },
      {
        "<leader>ss",
        Util.telescope("lsp_document_symbols", {
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
        }),
        desc = "Goto Symbol",
      },
    },
    opts = {
      defaults = {
        layout_config = {
          vertical = {
            width = 0.9,
          },
        },
        -- path_display = { "smart" },
        -- path_display = {
        --   shorten = {
        --     len = 2,
        --     exclude = { -1 },
        --   },
        -- },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        results_title = false,
        mappings = {
          i = {
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
              vim.cmd("copen")
            end,
            ["<C-c>"] = require("telescope.actions").close,
          },
          n = {
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
              vim.cmd("copen")
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
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "-H", -- --with-filename,
          "-n", -- --line-number
          "--column",
          "-S", -- --smart-case,
          "--hidden",
        },
      },
      pickers = {
        registers = {
          initial_mode = "insert",
          layout_config = { width = 0.7, height = 0.1 },
        },
        colorscheme = {
          layout_config = { width = 0.2, height = 0.7 },
        },
        spell_suggest = {
          layout_config = { width = 0.2, height = 0.7 },
        },
        command_history = {
          layout_config = { width = 0.6 },
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
        lsp_references = {
          initial_mode = "normal",
          jump_type = "never",
          include_current_line = true,
          fname_width = 60,
        },
        lsp_document_symbols = {
          fname_width = 10,
          trim_text = true,
          layout_strategy = "vertical",
          layout_config = {
            preview_cutoff = 0, -- Preview should always show (unless previewer = false)
            width = function(_, max_columns, _)
              return math.min(max_columns, 9)
            end,

            --height = function(_, _, max_lines)
            --  return math.min(max_lines, 15)
            --end,
            vertical = {
              width = 0.5,
            },
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
      },
    },
  },
}
