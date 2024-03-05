local changeModel = function()
  -- take the first column of the output of ollama list after header row and trim whitespace
  -- so that systemlist returns a valid list of models
  local list = vim.fn.systemlist("ollama list | awk 'NR>1' | cut -f1 | tr -d ' '")

  vim.ui.select(list, { prompt = "Select a model: " }, function(selected)
    if selected == nil then
      return
    end

    require("gen").model = selected
    print("Model set to " .. selected)
  end)
end

return {
  {
    "David-Kunz/gen.nvim",

    keys = {
      { "<leader>ai", ":Gen<CR>", mode = { "n", "v", "x" }, desc = "Local [AI]: Menu" },
      { "<leader>am", changeModel, mode = { "n" }, desc = "Local [AI]: Change Model" },
    },
    show_model = true,
    -- no_serve = true,
    -- debugCommand = true,
  },
}
