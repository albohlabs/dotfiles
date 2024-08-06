local prefix = "<leader><leader>"

-- https://github.com/cbochs/grapple.nvim
return {
  {
    "cbochs/grapple.nvim",
    event = { "BufReadPost", "BufNewFile" },
    command = "Grapple",
    dependencies = {
      { "nvim-tree/nvim-web-devicons", lazy = true },
    },
    keys = {
      { "<leader>a", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
      { prefix .. "e", "<cmd>Grapple open_tags<cr>", desc = "Grapple menu" },

      { "<leader>j", "<cmd>Grapple cycle_forward<cr>", desc = "Grapple forward" },
      { "<leader>k", "<cmd>Grapple cycle_backward<cr>", desc = "Grapple backward" },

      { "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Grapple select 1" },
      { "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Grapple select 2" },
      { "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Grapple select 3" },
      { "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Grapple select 4" },
      { "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Grapple select 5" },
      { "<leader>6", "<cmd>Grapple select index=6<cr>", desc = "Grapple select 6" },
      { "<leader>7", "<cmd>Grapple select index=7<cr>", desc = "Grapple select 7" },
      { "<leader>8", "<cmd>Grapple select index=8<cr>", desc = "Grapple select 8" },
      { "<leader>9", "<cmd>Grapple select index=9<cr>", desc = "Grapple select 9" },
    },
    opts = {
      -- https://github.com/cbochs/grapple.nvim?tab=readme-ov-file#scopes
      scope = "static",
    },
  },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = function(_, opts)
  --     table.insert(opts.sections.lualine_x, 1, {
  --       require("grapple").statusline,
  --       cond = require("grapple").exists,
  --     })
  --   end,
  -- },
}
