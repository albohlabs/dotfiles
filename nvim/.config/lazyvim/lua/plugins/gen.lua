return {
  {
    "David-Kunz/gen.nvim",
    name = "gen.nvim",
    cmd = { "Gen" },
    dev = true,
    opts = {
      model = "codellama", -- The default model to use.
      --   display_mode = "float", -- The display mode. Can be "float" or "split".
      --   show_prompt = true, -- Shows the Prompt submitted to Ollama.
      --   show_model = true, -- Displays which model you are using at the beginning of your chat session.
      --   no_auto_close = false, -- Never closes the window automatically.
      preprocess_body = function(prompt)
        return { prompt = prompt }
      end,
      --   -- Function to initialize Ollama
      command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
      debug = true, -- Prints errors and the command which is run.
    },
    keys = {
      { "<leader>ai", ":Gen<CR>", mode = { "n", "v", "x" }, desc = "Local [AI]: Menu" },
    },
  },
}
