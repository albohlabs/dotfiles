return {
  "chrisgrieser/nvim-recorder",
  dependencies = { "rcarriga/nvim-notify" },
  event = "VeryLazy",
  keys = {
    { "q", desc = "Start Recording" },
    { "Q", desc = "Play Recording" },
    { "<C-q>", desc = "Switch Slot" },
    { "cq", desc = "Edit Macro" },
    { "yq", desc = "Yank Macro" },
    { "dq", desc = "Delete All Macros" },
  },
  opts = {},
}
