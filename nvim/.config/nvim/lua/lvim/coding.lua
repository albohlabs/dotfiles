return {
  {
    "echasnovski/mini.surround",
    enabled = false,
  },

  --    Old text                    Command         New text
  --------------------------------------------------------------------------------
  --    surr*ound_words             ysiw)           (surround_words)
  --    *make strings               ys$"            "make strings"
  --    [delete ar*ound me!]        ds]             delete around me!
  --    remove <b>HTML t*ags</b>    dst             remove HTML tags
  --    'change quot*es'            cs'"            "change quotes"
  --    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
  --    delete(functi*on calls)     dsf             function calls
  {
    "kylechui/nvim-surround",
    enabled = true,
    event = "VeryLazy",
    config = true,
  },

  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },
}
