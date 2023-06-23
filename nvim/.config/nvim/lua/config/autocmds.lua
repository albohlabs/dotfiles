-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- show cursor line only in active window
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  callback = function()
    local ok, cl = pcall(vim.api.nvim_win_get_var, 0, "auto-cursorline")
    if ok and cl then
      vim.wo.cursorline = true
      vim.api.nvim_win_del_var(0, "auto-cursorline")
    end
  end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
  callback = function()
    local cl = vim.wo.cursorline
    if cl then
      vim.api.nvim_win_set_var(0, "auto-cursorline", cl)
      vim.wo.cursorline = false
    end
  end,
})

-- Disable diagnostics in a .env file
vim.api.nvim_create_autocmd("BufRead", {
  pattern = ".env",
  callback = function()
    vim.diagnostic.disable(0)
  end,
})

-- Disable tree-sitter for files over 1MB in size
vim.api.nvim_create_autocmd("BufRead", {
  pattern = "*",
  callback = function()
    local size = vim.fn.getfsize(vim.fn.expand("%:p"))
    if size > 500000 then
      vim.treesitter.stop()
    end
  end,
})

-- Make q close help, man, quickfix, dap floats
vim.api.nvim_create_autocmd("BufWinEnter", {
  desc = "Make q close help, man, quickfix, dap floats",
  group = vim.api.nvim_create_augroup("q_close_windows", { clear = true }),
  callback = function(event)
    local filetype = vim.api.nvim_get_option_value("filetype", { buf = event.buf })
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = event.buf })
    if buftype == "nofile" or filetype == "help" then
      vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true, nowait = true })
    end
  end,
})

-- Open Neo-Tree on startup with directory
vim.api.nvim_create_autocmd("BufEnter", {
  desc = "Open Neo-Tree on startup with directory",
  group = vim.api.nvim_create_augroup("neotree_start", { clear = true }),
  once = true,
  callback = function()
    if package.loaded["neo-tree"] then
      vim.api.nvim_del_augroup_by_name("neotree_start")
    else
      local stats = vim.loop.fs_stat(vim.api.nvim_buf_get_name(0))
      if stats and stats.type == "directory" then
        vim.api.nvim_del_augroup_by_name("neotree_start")
        require("neo-tree")
      end
    end
  end,
})
vim.api.nvim_create_autocmd("TermClose", {
  pattern = { "*lazygit", "*gitui" },
  desc = "Refresh Neo-Tree git when closing lazygit/gitui",
  group = vim.api.nvim_create_augroup("neotree_git_refresh", { clear = true }),
  callback = function()
    if package.loaded["neo-tree.sources.git_status"] then
      require("neo-tree.sources.git_status").refresh()
    end
  end,
})
