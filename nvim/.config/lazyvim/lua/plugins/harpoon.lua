local prefix = "<leader><leader>"

return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("harpoon").setup()
    require("telescope").load_extension("harpoon")
  end,
  cmd = { "Harpoon" },

  keys = {
    {
      prefix .. "a",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add file",
    },
    {
      prefix .. "e",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Toggle quick menu",
    },
    { prefix .. "m", "<cmd>Telescope harpoon marks<CR>", desc = "Show marks in Telescope" },

    { "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Harpoon Buffer 1" },
    { "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Harpoon Buffer 2" },
    { "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Harpoon Buffer 3" },
    { "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Harpoon Buffer 4" },
    { "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = "Harpoon Buffer 5" },
    { "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", desc = "Harpoon Buffer 6" },
    { "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", desc = "Harpoon Buffer 7" },
    { "<leader>8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", desc = "Harpoon Buffer 8" },
    { "<leader>9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", desc = "Harpoon Buffer 9" },
  },
}
