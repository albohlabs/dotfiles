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
    end
  },
}
