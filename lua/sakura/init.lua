--- Sakura - a Neovim port of Ghostty's "Sakura" terminal theme.
--- @module sakura
local config = require("sakura.config")

local M = {}

--- Store user options. Reloads the colorscheme if it is already active so that
--- calling setup() after `:colorscheme sakura` still takes effect.
--- @param opts SakuraConfig|nil
--- @return nil
function M.setup(opts)
  config.setup(opts)
  if vim.g.colors_name == "sakura" then
    M.load()
  end
end

--- Apply the colorscheme.
--- @return nil
function M.load()
  require("sakura.theme").load()
end

return M
