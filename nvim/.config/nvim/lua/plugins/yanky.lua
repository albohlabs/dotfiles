return {
  "gbprod/yanky.nvim",
  dependencies = { "kkharji/sqlite.lua" },
  -- enabled = false,
  event = "BufReadPost",
  config = function()
    -- vim.g.clipboard = {
    --   name = "xsel_override",
    --   copy = {
    --     ["+"] = "xsel --input --clipboard",
    --     ["*"] = "xsel --input --primary",
    --   },
    --   paste = {
    --     ["+"] = "xsel --output --clipboard",
    --     ["*"] = "xsel --output --primary",
    --   },
    --   cache_enabled = 1,
    -- }

    require("yanky").setup({
      highlight = {
        timer = 150,
      },
      ring = {
        storage = "sqlite",
      },
    })

    vim.keymap.set({ "n", "x" }, "y", "<Plug>(YankyYank)")

    vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
    vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
    vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
    vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

    vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleForward)")
    vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleBackward)")

    vim.keymap.set("n", "]p", "<Plug>(YankyPutIndentAfterLinewise)")
    vim.keymap.set("n", "[p", "<Plug>(YankyPutIndentBeforeLinewise)")
    vim.keymap.set("n", "]P", "<Plug>(YankyPutIndentAfterLinewise)")
    vim.keymap.set("n", "[P", "<Plug>(YankyPutIndentBeforeLinewise)")

    vim.keymap.set("n", ">p", "<Plug>(YankyPutIndentAfterShiftRight)")
    vim.keymap.set("n", "<p", "<Plug>(YankyPutIndentAfterShiftLeft)")
    vim.keymap.set("n", ">P", "<Plug>(YankyPutIndentBeforeShiftRight)")
    vim.keymap.set("n", "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)")

    vim.keymap.set("n", "=p", "<Plug>(YankyPutAfterFilter)")
    vim.keymap.set("n", "=P", "<Plug>(YankyPutBeforeFilter)")

    vim.keymap.set("n", "<leader>P", function()
      require("telescope").extensions.yank_history.yank_history({})
    end, { desc = "Paste from Yanky" })
  end,
}
