return {
  "ThePrimeagen/harpoon",
  enabled = false,
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
    { "<leader>m", desc = "Harpoon" },
    {
      "<leader>ma",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add harpoon file",
    },
    {
      "<leader>a",
      function()
        -- require("harpoon.ui").toggle_quick_menu()
        -- TODO: style me
        require("telescope").extensions.harpoon.marks()
      end,
      desc = "Open harpoon quick menu",
    },
    {
      "<leader>mc",
      function()
        require("harpoon.mark").clear_all()
      end,
      desc = "Clear all harpoon files",
    },
    {
      "<leader>md",
      function()
        require("harpoon.mark").rm_file()
      end,
      desc = "Delete harpoon file",
    },
    {
      "<leader>mk",
      function()
        require("harpoon.ui").nav_next()
      end,
      desc = "Next harpoon file",
    },
    {
      "<leader>mj",
      function()
        require("harpoon.ui").nav_prev()
      end,
      desc = "[harpoon] Prev file",
    },
    -- {
    --   "<leader>1",
    --   function()
    --     require("harpoon.ui").nav_file(1)
    --   end,
    --   desc = "harpoon 1",
    -- },
    -- {
    --   "<leader>2",
    --   function()
    --     require("harpoon.ui").nav_file(2)
    --   end,
    --   desc = "harpoon 2",
    -- },
    -- {
    --   "<leader>3",
    --   function()
    --     require("harpoon.ui").nav_file(3)
    --   end,
    --   desc = "harpoon 3",
    -- },
    -- {
    --   "<leader>4",
    --   function()
    --     require("harpoon.ui").nav_file(4)
    --   end,
    --   desc = "harpoon 4",
    -- },
    -- {
    --   "<leader>5",
    --   function()
    --     require("harpoon.ui").nav_file(5)
    --   end,
    --   desc = "harpoon 5",
    -- },
  },
}
