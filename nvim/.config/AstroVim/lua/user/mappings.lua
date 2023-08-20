-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    ["<leader>r"] = { ":Neotree toggle position=right git_status<cr>", desc = "Toggle Git Explorer" },
    ["<leader>uz"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --
    -- Harpoon
    ["<leader>1"] = { function() require("harpoon.ui").nav_file(1) end, desc = "Goto mark 1" },
    ["<leader>2"] = { function() require("harpoon.ui").nav_file(2) end, desc = "Goto mark 2" },
    ["<leader>3"] = { function() require("harpoon.ui").nav_file(3) end, desc = "Goto mark 3" },
    ["<leader>4"] = { function() require("harpoon.ui").nav_file(4) end, desc = "Goto mark 4" },
    ["<leader>5"] = { function() require("harpoon.ui").nav_file(5) end, desc = "Goto mark 5" },
    ["<leader>6"] = { function() require("harpoon.ui").nav_file(6) end, desc = "Goto mark 6" },

    ["<leader>lt"] = { "<cmd>AerialNavToggle<CR>", desc = "Code Tree" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
