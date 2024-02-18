local prefix = "<leader><leader>"

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = { "Harpoon" },

  keys = function()
    local harpoon = require("harpoon")

    -- stylua: ignore
    return {
      { prefix .. "a", function() require("harpoon"):list():append() end, desc = "Add location", },
      { prefix .. "r", function() require("harpoon"):list():remove() end, desc = "Remove location", },
      { "<LocalLeader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon select 1", },
      { "<LocalLeader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon select 2", },
      { "<LocalLeader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon select 3", },
      { "<LocalLeader>4", function() require("harpoon"):list():select(4) end, desc = "Harpoon select 4", },
      { "<LocalLeader>5", function() require("harpoon"):list():select(4) end, desc = "Harpoon select 5", },
      { "<LocalLeader>6", function() require("harpoon"):list():select(4) end, desc = "Harpoon select 5", },
      { prefix .. "e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "List locations", },
    }
  end,
}
