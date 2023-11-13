return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "ThePrimeagen/harpoon",
    "joshmedeski/telescope-smart-goto.nvim",
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("smart_goto")
  end,
}
