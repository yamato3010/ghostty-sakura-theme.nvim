--- Raw color palette of Ghostty's "Sakura" theme.
--- Every value here is taken verbatim from the Ghostty theme file; no color
--- outside of this table is used anywhere in the colorscheme.
--- @module sakura.palette

--- @class SakuraPalette
--- @field black string
--- @field red string
--- @field green string
--- @field yellow string
--- @field blue string
--- @field magenta string
--- @field cyan string
--- @field white string
--- @field bright_black string
--- @field bright_red string
--- @field bright_green string
--- @field bright_yellow string
--- @field bright_blue string
--- @field bright_magenta string
--- @field bright_cyan string
--- @field bright_white string
--- @field bg string
--- @field fg string
--- @field cursor string
--- @field cursor_fg string
--- @field sel_bg string
--- @field sel_fg string
--- @field surface string
local M = {
  -- ANSI 0-7
  black = "#000000",
  red = "#d52370",
  green = "#41af1a",
  yellow = "#bc7053",
  blue = "#6964ab",
  magenta = "#c71fbf",
  cyan = "#939393",
  white = "#998eac",

  -- ANSI 8-15
  bright_black = "#786d69",
  bright_red = "#f41d99",
  bright_green = "#22e529",
  bright_yellow = "#f59574",
  bright_blue = "#9892f1",
  bright_magenta = "#e90cdd",
  bright_cyan = "#eeeeee",
  bright_white = "#cbb6ff",

  -- special colors
  bg = "#18131e", -- background
  fg = "#dd7bdc", -- foreground
  cursor = "#ff65fd", -- cursor-color
  cursor_fg = "#24242e", -- cursor-text
  sel_bg = "#c05cbf", -- selection-background
  sel_fg = "#24242e", -- selection-foreground

  -- alias for cursor-text / selection-foreground, used as the raised surface
  -- color for floats, popups and the cursor line
  surface = "#24242e",
}

return M
