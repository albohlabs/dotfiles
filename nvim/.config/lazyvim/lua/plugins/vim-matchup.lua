return {
  "andymass/vim-matchup",
  event = "BufReadPost",
  init = function()
    vim.o.matchpairs = "(:),{:},[:],<:>"
  end,
  config = function()
    vim.g.matchup_matchparen_deferred = 1
    vim.g.matchup_matchparen_offscreen = { method = "status_manual" }
  end,
}
