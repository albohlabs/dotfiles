-- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/motion/harpoon/init.lua
local prefix = "<leader><leader>"

local maps = { n = {} }
local icon = vim.g.icons_enabled and "󱡀 " or ""
maps.n[prefix] = { desc = icon .. "Harpoon" }
require("astronvim.utils").set_mappings(maps)

return {
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = { "Harpoon" },
    keys = {
      { prefix .. "a", function() require("harpoon.mark").add_file() end, desc = "Add file" },
      { prefix .. "e", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle quick menu" },
      { prefix .. "m", "<cmd>Telescope harpoon marks<CR>", desc = "Show marks in Telescope" },

      { "<C-p>", function() require("harpoon.ui").nav_prev() end, desc = "Goto previous mark" },
      { "<C-n>", function() require("harpoon.ui").nav_next() end, desc = "Goto next mark" },

      ["<leader>1"] = { function() require("harpoon.ui").nav_file(1) end, desc = "Goto mark 1" },
      ["<leader>2"] = { function() require("harpoon.ui").nav_file(2) end, desc = "Goto mark 2" },
      ["<leader>3"] = { function() require("harpoon.ui").nav_file(3) end, desc = "Goto mark 3" },
      ["<leader>4"] = { function() require("harpoon.ui").nav_file(4) end, desc = "Goto mark 4" },
      ["<leader>5"] = { function() require("harpoon.ui").nav_file(5) end, desc = "Goto mark 5" },
      ["<leader>6"] = { function() require("harpoon.ui").nav_file(6) end, desc = "Goto mark 6" },
    },
  },
}
