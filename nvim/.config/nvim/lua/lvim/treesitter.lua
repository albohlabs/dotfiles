return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    opts = function(_, opts)
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
    autotag = {
      -- Setup autotag using treesitter config.
      enable = true,
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    config = true,
  },
}
