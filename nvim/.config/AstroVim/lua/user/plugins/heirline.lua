-- https://astronvim.com/Recipes/status#default-heirline-configuration
return {
  "heirline.nvim",
  opts = function(_, opts)
    local status = require "astronvim.utils.status"

    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      -- status.component.file_info { filetype = {}, filename = false, file_modified = false },
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.git_diff(),
      status.component.git_branch(),
      -- status.component.lsp(),
      -- status.component.treesitter(),
      -- status.component.nav(),
      -- status.component.mode { surround = { separator = "right" } },
    }
  end,
}
