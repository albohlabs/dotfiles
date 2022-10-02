local present, autosession = pcall(require, "auto-session")

if not present then
  return
end

-- https://github.com/rmagatti/auto-session/wiki/Troubleshooting
-- cmdheight after restore is incorrect
function _G.close_all_floating_wins()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local config = vim.api.nvim_win_get_config(win)
    if config.relative ~= "" then
      vim.api.nvim_win_close(win, false)
    end
  end
end

-- set info to be saved with the underlying :mksession
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

local options = {
  auto_session_suppress_dirs = { vim.env.HOME, "/tmp/", "~/Development", "~/Downloads", "/" },
  auto_restore_enabled = false,

  pre_save_cmds = { _G.close_all_floating_wins },
  -- pre_save_cmds = { "NvimTreeClose" },
}

autosession.setup(options)
