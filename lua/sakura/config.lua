--- Configuration management for the Sakura colorscheme.
--- @module sakura.config
local M = {}

--- @class SakuraConfig
--- @field transparent boolean Use the terminal background instead of #18131e
--- @field italic_comments boolean Render comments in italic

--- @type SakuraConfig
local defaults = {
  transparent = false,
  italic_comments = true,
}

--- @type SakuraConfig
M.options = vim.deepcopy(defaults)

--- Merge user options into the current configuration.
--- @param opts SakuraConfig|nil
--- @return nil
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

--- @return SakuraConfig
function M.get()
  return M.options
end

return M
