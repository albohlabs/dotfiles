local function legendary_open()
  require 'legendary'.find()
end

return {
  {
    "mrjones2014/legendary.nvim",
    name = 'legendary',
    keys = {
      { '<leader>k', legendary_open, desc = 'Command Palette' },
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
}
