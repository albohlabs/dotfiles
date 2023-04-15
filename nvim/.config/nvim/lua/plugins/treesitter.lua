return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- https://github.com/LazyVim/LazyVim/issues/524
      opts.ignore_install = { "help" }

      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "bash",
          "comment",
          "diff",
          "dockerfile",
          "dot",
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "graphql",
          "haskell",
          "json",
          "lua",
          "make",
          "markdown",
          "markdown_inline",
          -- "mermaid",
          -- "toml",
          -- "vim",
          "yaml",
          -- "gitignore",
          -- "regex",
          -- "sql",
        })
      end
    end,
    matchup = {
      enable = true,
    },
    highlight = { enable = true },
    query_linter = {
      enable = true,
      use_virtual_text = true,
      lint_events = { "BufWrite", "CursorHold" },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    config = true,
  },
}
