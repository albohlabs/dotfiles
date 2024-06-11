return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts, {
      winopts = {
        fullscreen = true,
      },
    })
  end,
}
