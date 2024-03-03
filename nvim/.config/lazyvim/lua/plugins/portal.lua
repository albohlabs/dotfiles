-- https://github.com/cbochs/portal.nvim
return {
  {
    "cbochs/portal.nvim",
    keys = {
      { "<leader>i", "<cmd>Portal grapple forward<cr>", desc = "Portal forward" },
      { "<leader>o", "<cmd>Portal grapple backward<cr>", desc = "Portal backward" },
    },
    opts = {
      wrap = true,
      select_first = true,
      escape = {
        ["<c-j>"] = true,
        ["<esc>"] = true,
        ["q"] = true,
      },
    },
  },
}
