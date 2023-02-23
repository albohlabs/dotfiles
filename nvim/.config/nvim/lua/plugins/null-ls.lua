return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")

      return {
        source = {
          -- b.formatting.elm_format,

          nls.builtins.formatting.prettierd,
          nls.builtins.diagnostics.eslint_d,
          nls.builtins.code_actions.eslint_d,
          -- nls.builtins.formatting.prismaFmt,

          -- b.diagnostics.tsc,
          -- https://github.com/jose-elias-alvarez/typescript.nvim#null-ls
          require("typescript.extensions.null-ls.code-actions"),

          nls.builtins.code_actions.gitsigns,

          -- nls.builtins.formatting.rustfmt,

          -- Lua
          nls.builtins.formatting.stylua,
          -- b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

          -- Shell
          -- nls.builtins.diagnostics.shellcheck,
          -- nls.builtins.code_actions.shellcheck,

          -- nls.builtins.formatting.shfmt,
          -- nls.builtins.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
        },
      }
    end,
  },
}
