local function legendary_open()
  require("legendary").find()
end

return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
 ███╗   ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
 ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
 ██╔██╗ ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
 ██║╚██╗██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
 ██║ ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
 ╚═╝  ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
      ]]
      opts.section.header.val = vim.split(logo, "\n")
      opts.section.buttons.val = {
        dashboard.button("p", " " .. "Open project", "<cmd>Telescope project display_type=full<cr>"),
        dashboard.button("e", " " .. "New file", "<cmd>ene <BAR> startinsert<cr>"),
        dashboard.button("f", " " .. "Find file", "<cmd>cd $HOME/Projects | Telescope find_files<cr>"),
        dashboard.button("r", " " .. "Recent files", "<CMD>Telescope oldfiles<cr>"),
        dashboard.button("s", "勒" .. "Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("c", " " .. "Config", ":e $MYVIMRC | :cd %:p:h | Telescope file_browser<cr>"),
        dashboard.button("l", "鈴" .. "Lazy", "<cmd>Lazy<cr>"),
        dashboard.button("m", " " .. "Mason", "<cmd>Mason<cr>"),
        dashboard.button("q", " " .. "Quit", "<cmd>qa<cr>"),
      }
      opts.config.opts.setup = function()
        vim.api.nvim_create_autocmd("User", {
          pattern = "AlphaReady",
          desc = "disable tabline for alpha",
          callback = function()
            vim.opt.showtabline = 0
          end,
        })
        vim.api.nvim_create_autocmd("BufUnload", {
          buffer = 0,
          desc = "enable tabline after alpha",
          callback = function()
            vim.opt.showtabline = 2
          end,
        })
      end
    end,
  },

  {
    "mrjones2014/legendary.nvim",
    name = "legendary",
    keys = {
      { "<leader>k", legendary_open, desc = "Command Palette" },
    },
    -- sqlite is only needed if you want to use frecency sorting
    dependencies = {
      "kkharji/sqlite.lua",
      "folke/which-key.nvim",
    },
    event = "VeryLazy",
    opts = {
      which_key = { auto_register = true },
    },
  },

  -- floating winbar
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    config = function()
      require("incline").setup({
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },

  -- auto-resize windows
  {
    "anuvyklack/windows.nvim",
    event = "WinNew",
    dependencies = {
      { "anuvyklack/middleclass" },
      { "anuvyklack/animation.nvim", enabled = false },
    },
    keys = { { "<leader>Z", "<cmd>WindowsMaximize<cr>", desc = "Zoom" } },
    config = function()
      vim.o.winwidth = 5
      vim.o.equalalways = false
      require("windows").setup({
        animation = { enable = false, duration = 150 },
      })
    end,
  },

  {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    config = function()
      local scrollbar = require("scrollbar")
      local colors = require("tokyonight.colors").setup()
      scrollbar.setup({
        handle = { color = colors.bg_highlight },
        excluded_filetypes = { "prompt", "TelescopePrompt", "noice", "notify" },
        marks = {
          Search = { color = colors.orange },
          Error = { color = colors.error },
          Warn = { color = colors.warning },
          Info = { color = colors.info },
          Hint = { color = colors.hint },
          Misc = { color = colors.purple },
        },
      })
    end,
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        offsets = { text_align = "left" },
        separator_style = { "", "" },
        indicator = { style = "none" },
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        always_show_bufferline = true,
      },
    },
  },

  {
    "luukvbaal/statuscol.nvim",
    config = true,
  },

  {
    "aaronkollasch/nvim-navbuddy",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "SmiteshP/nvim-navic" },
      { "MunifTanjim/nui.nvim" },
    },
    event = "LspAttach",
    opts = {
      lsp = { auto_attach = true },
      window = {
        border = "single", -- "rounded", "double", "solid", "none"
        size = "100%", -- Or table format example: { height = "40%", width = "100%"}
        position = "100%",
      },
    },
    keys = {
      { "<leader>ct", "<cmd>Navbuddy<CR>", desc = "[C]ode  [T]ree" },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      },
      sections = {
        lualine_z = {},
      },
    },
  },

  {
    "unblevable/quick-scope",
    event = { "BufReadPost", "BufNewFile" },
  },
}
