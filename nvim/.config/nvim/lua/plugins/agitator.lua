return {
  "emmanueltouzery/agitator.nvim",
  keys = {
    {
      "<leader>gb",
      function()
        require("agitator").git_blame_toggle()
      end,
      desc = "Blame file",
    },
  },
}
