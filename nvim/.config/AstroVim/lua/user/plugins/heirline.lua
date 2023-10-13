-- https://astronvim.com/Recipes/status#default-heirline-configuration
return {
  "heirline.nvim",
  opts = function(_, opts)
    local status = require "astronvim.utils.status"

    -- opts.winbar = nil
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      -- status.component.file_info { filetype = {}, filename = false, file_modified = false },
      status.component.git_diff(),
      status.component.diagnostics(),
      -- status.component.lsp { lsp_client_names = false },
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.git_branch(),
      -- status.component.treesitter(),
      -- status.component.nav(),
      -- status.component.mode { surround = { separator = "right" } },
    }
  end,
}
