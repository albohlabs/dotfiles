-- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/utils.lua
local M = {}

--- Call function if a condition is met
---@param func function The function to run
---@param condition boolean # Whether to run the function or not
---@return any|nil result # the result of the function running or nil
function M.conditional_func(func, condition, ...)
  -- if the condition is true or no condition is provided, evaluate the function with the rest of the parameters and return the result
  if condition and type(func) == "function" then
    return func(...)
  end
end

--- Insert one or more values into a list like table and maintain that you do not insert non-unique values (THIS MODIFIES `lst`)
---@param lst any[]|nil The list like table that you want to insert into
---@param vals any|any[] Either a list like table of values to be inserted or a single value to be inserted
---@return any[] # The modified list like table
function M.list_insert_unique(lst, vals)
  if not lst then
    lst = {}
  end
  assert(vim.tbl_islist(lst), "Provided table is not a list like table")
  if not vim.tbl_islist(vals) then
    vals = { vals }
  end
  local added = {}
  vim.tbl_map(function(v)
    added[v] = true
  end, lst)
  for _, val in ipairs(vals) do
    if not added[val] then
      table.insert(lst, val)
      added[val] = true
    end
  end
  return lst
end

return M
