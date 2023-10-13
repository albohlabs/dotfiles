return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "ThePrimeagen/harpoon",
    "joshmedeski/telescope-smart-goto.nvim",
  },
  opts = function()
    require("telescope").load_extension("smart_goto")
  end,
}
