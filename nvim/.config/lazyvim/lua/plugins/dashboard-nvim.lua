return {
  "nvimdev/dashboard-nvim",
  -- Only load when no arguments
  event = function()
    if vim.fn.argc() == 0 then
      return "VimEnter"
    end
  end,
  opts = function()
    math.randomseed(os.time())
    local randomNumber = math.random(4)
    local speed = "1.0"
    if randomNumber == 1 then
      speed = "0.4"
    elseif randomNumber == 2 then
      speed = "0.6"
    end

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },

      preview = {
        command = "chafa -c full --fg-only --speed " .. speed .. " --symbols braille --clear",
        file_path = "$(ls " .. vim.fn.stdpath("config") .. "/static/*.gif | sort -R | head -n 1)",
        file_height = 20,
        file_width = 40,
      },

      config = {
        packages = { enable = false },
        disable_move = true,
        -- header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          {
            action = "Telescope find_files",
            desc = " Find file",
            icon = " ",
            key = "f",
          },
          {
            action = "ene | startinsert",
            desc = " New file",
            icon = " ",
            key = "n",
          },
          {
            action = "Telescope oldfiles",
            desc = " Recent files",
            icon = " ",
            key = "r",
          },
          -- {
          --   action = "Telescope live_grep",
          --   desc = " Find text",
          --   icon = " ",
          --   key = "g",
          -- },
          {
            action = [[lua require("lazyvim.util").telescope.config_files()()]],
            desc = " Config",
            icon = " ",
            key = "c",
          },
          {
            action = 'lua require("persistence").load()',
            desc = " Restore Session",
            icon = " ",
            key = "s",
          },
          {
            action = "LazyExtras",
            desc = " Lazy Extras",
            icon = " ",
            key = "x",
          },
          -- {
          --   action = "Lazy",
          --   desc = " Lazy",
          --   icon = "󰒲 ",
          --   key = "l",
          -- },
          {
            action = "qa",
            desc = " Quit",
            icon = " ",
            key = "q",
          },
        }
,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
