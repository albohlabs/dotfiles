local prefix = "<leader><leader>"

-- https://github.com/cbochs/grapple.nvim
return {
  {
    "cbochs/grapple.nvim",
    cmd = { "Grapple" },
    dependencies = {
      { "nvim-tree/nvim-web-devicons", lazy = true },
    },
    keys = {
      { prefix .. "a", "<cmd>Grapple tag<cr>", desc = "Grapple tag" },
      { prefix .. "r", "<CMD>GrappleUntag<CR>", desc = "Grapple untag" },
      -- { prefix .. "A", "<CMD>GrappleUntag<CR>", desc = "Grapple toggle" },
      { prefix .. "e", "<cmd>Grapple open_tags<cr>", desc = "Grapple menu" },

      { prefix .. "<Tab>", "<cmd>Grapple cycle_forward<cr>", desc = "Grapple forward" },
      { prefix .. "<S-Tab>", "<cmd>Grapple cycle_backward<cr>", desc = "Grapple backward" },

      { "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Grapple Tag 1" },
      { "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Grapple Tag 2" },
      { "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Grapple Tag 3" },
      { "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Grapple Tag 4" },
      { "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Grapple Tag 5" },
      { "<leader>6", "<cmd>Grapple select index=6<cr>", desc = "Grapple Tag 6" },
      { "<leader>7", "<cmd>Grapple select index=7<cr>", desc = "Grapple Tag 7" },
      { "<leader>8", "<cmd>Grapple select index=8<cr>", desc = "Grapple Tag 8" },
      { "<leader>9", "<cmd>Grapple select index=9<cr>", desc = "Grapple Tag 9" },
    },
  },
}
