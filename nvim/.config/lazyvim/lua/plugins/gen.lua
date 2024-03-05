-- local format = [[\nOutput the result in the format ```$filetype\n...\n```.]]
-- local code = [[\nIf I didn't provide code, say so briefly and don't give additional advice.\n```$filetype\n$text\n```]]

return {
  {
    "David-Kunz/gen.nvim",
    name = "gen.nvim",
    dev = true,
    -- config = function()
    --   local gen = require("gen")
    --   gen.prompts["Enhance_Comment"] = {
    --     prompt = "Elaborate the comment text as a comment. Only ouput the result as a valid comment. Do not elaborate code about the comment. This is for the comment only. This should be in the syntax of $filetype:\n$text",
    --     replace = true,
    --   }

    --   gen.prompts["Add_Comment"] = {
    --     prompt = "Add comments for the following code. The response should include all the original code with comments. Do not elaborate on or otherwise change the provided code. The code provide is in the syntax of $filetype:\n$text",
    --     replace = true,
    --   }

    --   gen.prompts["Function_Comment"] = {
    --     prompt = "Add a top level comment for the following function declaration. The response should only be the comment for the function. The code provide is in the syntax of $filetype:\n$text",
    --   }

    --   gen.prompts["Optimize code"] = { prompt = "Optimize and simplify the following code." .. format .. code }
    --   gen.prompts["Generate doc comment"] = {
    --     prompt = "Generate a doc comment for the following code and stop once the comment is complete."
    --       .. format
    --       .. code,
    --   }
    --   gen.prompts["Generate tests"] = {
    --     prompt = "Generate unit tests for the following code. Write short to-the-point test methods with only one or two asserts each."
    --       .. format
    --       .. code,
    --   }

    --   -- Talk about code
    --   gen.prompts["Review code"] =
    --     { prompt = "Review the following code and make concise suggestions. Give extra weight to bugs." .. code }
    --   gen.prompts["Explain code"] = { prompt = "Explain the following code." .. code }
    --   gen.prompts["Analyse code readability"] = { prompt = "Analyse the readability of the following code." .. code }
    -- end,
    opts = {
      model = "codellama", -- The default model to use.
      --   display_mode = "float", -- The display mode. Can be "float" or "split".
      --   show_prompt = true, -- Shows the Prompt submitted to Ollama.
      --   show_model = true, -- Displays which model you are using at the beginning of your chat session.
      --   no_auto_close = false, -- Never closes the window automatically.
      --   init = function(options)
      --     pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
      --   end,
      preprocess_body = function(prompt)
        return { prompt = prompt }
      end,
      --   -- Function to initialize Ollama
      command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
      --   -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
      --   -- This can also be a lua function returning a command string, with options as the input parameter.
      --   -- The executed command must return a JSON object with { response, context }
      --   -- (context property is optional).
      --   -- list_models = "<function>", -- Retrieves a list of model names
      debug = true, -- Prints errors and the command which is run.
    },
    -- cmd = "Gen",
    -- event = "VeryLazy",
    keys = {
      { "<leader>ai", ":Gen<CR>", mode = { "n", "v", "x" }, desc = "Local [AI]: Menu" },
    },
  },
}
