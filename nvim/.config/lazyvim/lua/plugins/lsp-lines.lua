return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim", -- show diagnostics using virtual lines
  enabled = false,
  config = function()
    local lsp_lines = require("lsp_lines")

    lsp_lines.setup()
    lsp_lines.toggle()

    vim.keymap.set("n", "g?", lsp_lines.toggle, { noremap = true, silent = true, desc = "Change diagnostics style" })
  end,
}
