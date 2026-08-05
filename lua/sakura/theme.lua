--- Highlight definitions and loader for the Sakura colorscheme.
--- @module sakura.theme
local p = require("sakura.palette")
local config = require("sakura.config")

local M = {}

--- Build the full highlight table for the current configuration.
--- @return table<string, vim.api.keyset.highlight>
function M.highlights()
  local opts = config.get()
  local bg = opts.transparent and "NONE" or p.bg
  local comment_style = opts.italic_comments and { italic = true } or {}

  --- @type table<string, vim.api.keyset.highlight>
  local hl = {
    ---------------------------------------------------------------------------
    -- Editor
    ---------------------------------------------------------------------------
    Normal = { fg = p.fg, bg = bg },
    NormalNC = { fg = p.fg, bg = bg },
    NormalFloat = { fg = p.fg, bg = opts.transparent and "NONE" or p.surface },
    FloatBorder = { fg = p.magenta, bg = opts.transparent and "NONE" or p.surface },
    FloatTitle = { fg = p.bright_magenta, bg = opts.transparent and "NONE" or p.surface, bold = true },
    FloatShadow = { bg = p.black },
    FloatShadowThrough = { bg = p.black },

    Cursor = { fg = p.cursor_fg, bg = p.cursor },
    lCursor = { fg = p.cursor_fg, bg = p.cursor },
    CursorIM = { fg = p.cursor_fg, bg = p.cursor },
    TermCursor = { fg = p.cursor_fg, bg = p.cursor },
    TermCursorNC = { fg = p.cursor_fg, bg = p.bright_black },

    CursorLine = { bg = p.surface },
    CursorColumn = { bg = p.surface },
    ColorColumn = { bg = p.surface },

    LineNr = { fg = p.bright_black },
    LineNrAbove = { fg = p.bright_black },
    LineNrBelow = { fg = p.bright_black },
    CursorLineNr = { fg = p.cursor, bold = true },
    CursorLineSign = { bg = p.surface },
    CursorLineFold = { bg = p.surface },

    SignColumn = { fg = p.bright_black, bg = bg },
    FoldColumn = { fg = p.bright_black, bg = bg },
    Folded = { fg = p.white, bg = p.surface },

    Conceal = { fg = p.bright_black },
    EndOfBuffer = { fg = p.bg },
    NonText = { fg = p.bright_black },
    SpecialKey = { fg = p.bright_black },
    Whitespace = { fg = p.bright_black },
    Directory = { fg = p.bright_blue },
    Title = { fg = p.bright_magenta, bold = true },

    MatchParen = { fg = p.cursor, bold = true },

    Visual = { fg = p.sel_fg, bg = p.sel_bg },
    VisualNOS = { fg = p.sel_fg, bg = p.sel_bg },

    Search = { fg = p.bg, bg = p.yellow },
    IncSearch = { fg = p.bg, bg = p.bright_yellow },
    CurSearch = { fg = p.bg, bg = p.bright_yellow },
    Substitute = { fg = p.bg, bg = p.bright_red },

    ErrorMsg = { fg = p.bright_red },
    WarningMsg = { fg = p.bright_yellow },
    ModeMsg = { fg = p.fg, bold = true },
    MoreMsg = { fg = p.bright_green },
    Question = { fg = p.bright_green },
    MsgArea = { fg = p.fg },
    MsgSeparator = { fg = p.magenta, bg = p.surface },

    StatusLine = { fg = p.white, bg = p.surface },
    StatusLineNC = { fg = p.bright_black, bg = p.surface },
    WinBar = { fg = p.white, bg = bg },
    WinBarNC = { fg = p.bright_black, bg = bg },
    TabLine = { fg = p.bright_black, bg = p.surface },
    TabLineFill = { bg = p.black },
    TabLineSel = { fg = p.bright_magenta, bg = bg, bold = true },

    VertSplit = { fg = p.surface },
    WinSeparator = { fg = p.surface },

    Pmenu = { fg = p.fg, bg = p.surface },
    PmenuSel = { fg = p.sel_fg, bg = p.sel_bg },
    PmenuKind = { fg = p.bright_yellow, bg = p.surface },
    PmenuKindSel = { fg = p.sel_fg, bg = p.sel_bg },
    PmenuExtra = { fg = p.bright_black, bg = p.surface },
    PmenuExtraSel = { fg = p.sel_fg, bg = p.sel_bg },
    PmenuSbar = { bg = p.surface },
    PmenuThumb = { bg = p.bright_black },
    PmenuMatch = { fg = p.bright_magenta, bg = p.surface, bold = true },
    PmenuMatchSel = { fg = p.sel_fg, bg = p.sel_bg, bold = true },
    WildMenu = { fg = p.sel_fg, bg = p.sel_bg },

    QuickFixLine = { bg = p.surface, bold = true },

    SpellBad = { sp = p.bright_red, undercurl = true },
    SpellCap = { sp = p.bright_yellow, undercurl = true },
    SpellLocal = { sp = p.cyan, undercurl = true },
    SpellRare = { sp = p.bright_blue, undercurl = true },

    DiffAdd = { fg = p.green },
    DiffChange = { fg = p.yellow },
    DiffDelete = { fg = p.red },
    DiffText = { fg = p.bright_yellow, bg = p.surface, bold = true },

    Added = { fg = p.bright_green },
    Changed = { fg = p.bright_yellow },
    Removed = { fg = p.bright_red },

    ---------------------------------------------------------------------------
    -- Syntax (legacy vim groups)
    ---------------------------------------------------------------------------
    Comment = vim.tbl_extend("force", { fg = p.bright_black }, comment_style),

    Constant = { fg = p.yellow },
    String = { fg = p.green },
    Character = { fg = p.bright_green },
    Number = { fg = p.yellow },
    Float = { fg = p.yellow },
    Boolean = { fg = p.bright_red },

    Identifier = { fg = p.fg },
    Function = { fg = p.bright_blue },

    Statement = { fg = p.bright_magenta },
    Conditional = { fg = p.bright_magenta },
    Repeat = { fg = p.bright_magenta },
    Label = { fg = p.bright_magenta },
    Operator = { fg = p.white },
    Keyword = { fg = p.bright_magenta },
    Exception = { fg = p.bright_magenta },

    PreProc = { fg = p.magenta },
    Include = { fg = p.magenta },
    Define = { fg = p.magenta },
    Macro = { fg = p.magenta },
    PreCondit = { fg = p.magenta },

    Type = { fg = p.bright_yellow },
    StorageClass = { fg = p.bright_magenta },
    Structure = { fg = p.bright_yellow },
    Typedef = { fg = p.bright_yellow },

    Special = { fg = p.cyan },
    SpecialChar = { fg = p.cyan },
    Tag = { fg = p.red },
    Delimiter = { fg = p.white },
    SpecialComment = vim.tbl_extend("force", { fg = p.cyan }, comment_style),
    Debug = { fg = p.bright_red },

    Underlined = { underline = true },
    Ignore = { fg = p.bright_black },
    Error = { fg = p.bright_red },
    Todo = { fg = p.bg, bg = p.bright_yellow, bold = true },

    ---------------------------------------------------------------------------
    -- Diagnostics
    ---------------------------------------------------------------------------
    DiagnosticError = { fg = p.bright_red },
    DiagnosticWarn = { fg = p.bright_yellow },
    DiagnosticInfo = { fg = p.bright_blue },
    DiagnosticHint = { fg = p.cyan },
    DiagnosticOk = { fg = p.bright_green },

    DiagnosticVirtualTextError = { fg = p.red },
    DiagnosticVirtualTextWarn = { fg = p.yellow },
    DiagnosticVirtualTextInfo = { fg = p.blue },
    DiagnosticVirtualTextHint = { fg = p.cyan },
    DiagnosticVirtualTextOk = { fg = p.green },

    DiagnosticUnderlineError = { sp = p.bright_red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = p.bright_yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = p.bright_blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = p.cyan, undercurl = true },
    DiagnosticUnderlineOk = { sp = p.bright_green, undercurl = true },

    DiagnosticFloatingError = { fg = p.bright_red },
    DiagnosticFloatingWarn = { fg = p.bright_yellow },
    DiagnosticFloatingInfo = { fg = p.bright_blue },
    DiagnosticFloatingHint = { fg = p.cyan },
    DiagnosticFloatingOk = { fg = p.bright_green },

    DiagnosticSignError = { fg = p.bright_red },
    DiagnosticSignWarn = { fg = p.bright_yellow },
    DiagnosticSignInfo = { fg = p.bright_blue },
    DiagnosticSignHint = { fg = p.cyan },
    DiagnosticSignOk = { fg = p.bright_green },

    DiagnosticUnnecessary = { fg = p.bright_black },
    DiagnosticDeprecated = { fg = p.bright_black, strikethrough = true },

    ---------------------------------------------------------------------------
    -- LSP
    ---------------------------------------------------------------------------
    LspReferenceText = { bg = p.surface },
    LspReferenceRead = { bg = p.surface },
    LspReferenceWrite = { bg = p.surface, underline = true },
    LspInlayHint = { fg = p.bright_black, bg = p.surface },
    LspCodeLens = vim.tbl_extend("force", { fg = p.bright_black }, comment_style),
    LspCodeLensSeparator = { fg = p.bright_black },
    LspSignatureActiveParameter = { fg = p.bright_yellow, bold = true },
    LspInfoBorder = { fg = p.magenta, bg = p.surface },

    ---------------------------------------------------------------------------
    -- Treesitter
    ---------------------------------------------------------------------------
    ["@variable"] = { fg = p.fg },
    ["@variable.builtin"] = { fg = p.bright_red },
    ["@variable.parameter"] = { fg = p.white },
    ["@variable.parameter.builtin"] = { fg = p.white },
    ["@variable.member"] = { fg = p.bright_white },

    ["@constant"] = { fg = p.yellow },
    ["@constant.builtin"] = { fg = p.bright_red },
    ["@constant.macro"] = { fg = p.magenta },

    ["@module"] = { fg = p.bright_white },
    ["@module.builtin"] = { fg = p.bright_red },
    ["@label"] = { fg = p.bright_magenta },

    ["@string"] = { fg = p.green },
    ["@string.documentation"] = vim.tbl_extend("force", { fg = p.green }, comment_style),
    ["@string.regexp"] = { fg = p.bright_green },
    ["@string.escape"] = { fg = p.cyan },
    ["@string.special"] = { fg = p.cyan },
    ["@string.special.symbol"] = { fg = p.bright_white },
    ["@string.special.path"] = { fg = p.bright_blue },
    ["@string.special.url"] = { fg = p.bright_blue, underline = true },

    ["@character"] = { fg = p.bright_green },
    ["@character.special"] = { fg = p.cyan },

    ["@boolean"] = { fg = p.bright_red },
    ["@number"] = { fg = p.yellow },
    ["@number.float"] = { fg = p.yellow },

    ["@type"] = { fg = p.bright_yellow },
    ["@type.builtin"] = { fg = p.bright_yellow },
    ["@type.definition"] = { fg = p.bright_yellow },
    ["@type.qualifier"] = { fg = p.bright_magenta },

    ["@attribute"] = { fg = p.magenta },
    ["@attribute.builtin"] = { fg = p.magenta },
    ["@property"] = { fg = p.bright_white },
    ["@field"] = { fg = p.bright_white },

    ["@function"] = { fg = p.bright_blue },
    ["@function.builtin"] = { fg = p.bright_blue },
    ["@function.call"] = { fg = p.bright_blue },
    ["@function.macro"] = { fg = p.magenta },
    ["@function.method"] = { fg = p.bright_blue },
    ["@function.method.call"] = { fg = p.bright_blue },
    ["@constructor"] = { fg = p.bright_yellow },
    ["@operator"] = { fg = p.white },

    ["@keyword"] = { fg = p.bright_magenta },
    ["@keyword.coroutine"] = { fg = p.bright_magenta },
    ["@keyword.function"] = { fg = p.bright_magenta },
    ["@keyword.operator"] = { fg = p.bright_magenta },
    ["@keyword.import"] = { fg = p.magenta },
    ["@keyword.type"] = { fg = p.bright_magenta },
    ["@keyword.modifier"] = { fg = p.bright_magenta },
    ["@keyword.repeat"] = { fg = p.bright_magenta },
    ["@keyword.return"] = { fg = p.bright_magenta },
    ["@keyword.debug"] = { fg = p.bright_red },
    ["@keyword.exception"] = { fg = p.bright_magenta },
    ["@keyword.conditional"] = { fg = p.bright_magenta },
    ["@keyword.conditional.ternary"] = { fg = p.white },
    ["@keyword.directive"] = { fg = p.magenta },
    ["@keyword.directive.define"] = { fg = p.magenta },

    ["@punctuation.delimiter"] = { fg = p.white },
    ["@punctuation.bracket"] = { fg = p.white },
    ["@punctuation.special"] = { fg = p.cyan },

    ["@comment"] = vim.tbl_extend("force", { fg = p.bright_black }, comment_style),
    ["@comment.documentation"] = vim.tbl_extend("force", { fg = p.bright_black }, comment_style),
    ["@comment.error"] = { fg = p.bg, bg = p.bright_red, bold = true },
    ["@comment.warning"] = { fg = p.bg, bg = p.bright_yellow, bold = true },
    ["@comment.todo"] = { fg = p.bg, bg = p.bright_magenta, bold = true },
    ["@comment.note"] = { fg = p.bg, bg = p.bright_blue, bold = true },

    ["@markup"] = { fg = p.fg },
    ["@markup.strong"] = { fg = p.bright_magenta, bold = true },
    ["@markup.italic"] = { fg = p.bright_magenta, italic = true },
    ["@markup.emphasis"] = { fg = p.bright_magenta, italic = true },
    ["@markup.strikethrough"] = { fg = p.bright_black, strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = p.bright_magenta, bold = true },
    ["@markup.heading.1"] = { fg = p.bright_magenta, bold = true },
    ["@markup.heading.2"] = { fg = p.magenta, bold = true },
    ["@markup.heading.3"] = { fg = p.bright_blue, bold = true },
    ["@markup.heading.4"] = { fg = p.bright_yellow, bold = true },
    ["@markup.heading.5"] = { fg = p.green, bold = true },
    ["@markup.heading.6"] = { fg = p.cyan, bold = true },
    ["@markup.quote"] = { fg = p.white, italic = true },
    ["@markup.math"] = { fg = p.bright_yellow },
    ["@markup.environment"] = { fg = p.magenta },
    ["@markup.link"] = { fg = p.bright_blue },
    ["@markup.link.label"] = { fg = p.bright_white },
    ["@markup.link.url"] = { fg = p.bright_blue, underline = true },
    ["@markup.raw"] = { fg = p.green },
    ["@markup.raw.block"] = { fg = p.green },
    ["@markup.list"] = { fg = p.bright_magenta },
    ["@markup.list.checked"] = { fg = p.bright_green },
    ["@markup.list.unchecked"] = { fg = p.bright_black },

    ["@diff.plus"] = { fg = p.bright_green },
    ["@diff.minus"] = { fg = p.bright_red },
    ["@diff.delta"] = { fg = p.bright_yellow },

    ["@tag"] = { fg = p.red },
    ["@tag.builtin"] = { fg = p.red },
    ["@tag.attribute"] = { fg = p.bright_yellow },
    ["@tag.delimiter"] = { fg = p.white },

    ---------------------------------------------------------------------------
    -- LSP semantic tokens
    ---------------------------------------------------------------------------
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { link = "@function.macro" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.modifier"] = { link = "@keyword.modifier" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.regexp"] = { link = "@string.regexp" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"] = { link = "@variable" },

    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.readonly"] = { link = "@constant" },
    ["@lsp.typemod.property.readonly"] = { link = "@constant" },
    ["@lsp.typemod.keyword.documentation"] = { link = "@keyword" },

    ---------------------------------------------------------------------------
    -- GitSigns
    ---------------------------------------------------------------------------
    GitSignsAdd = { fg = p.green },
    GitSignsChange = { fg = p.yellow },
    GitSignsDelete = { fg = p.red },
    GitSignsAddNr = { fg = p.green },
    GitSignsChangeNr = { fg = p.yellow },
    GitSignsDeleteNr = { fg = p.red },
    GitSignsAddLn = { bg = p.surface },
    GitSignsChangeLn = { bg = p.surface },
    GitSignsDeleteLn = { bg = p.surface },
    GitSignsCurrentLineBlame = vim.tbl_extend("force", { fg = p.bright_black }, comment_style),
  }

  return hl
end

--- Apply the colorscheme.
--- @return nil
function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "sakura"

  for group, settings in pairs(M.highlights()) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Terminal colors: exact ANSI palette of the Ghostty theme
  vim.g.terminal_color_0 = p.black
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_3 = p.yellow
  vim.g.terminal_color_4 = p.blue
  vim.g.terminal_color_5 = p.magenta
  vim.g.terminal_color_6 = p.cyan
  vim.g.terminal_color_7 = p.white
  vim.g.terminal_color_8 = p.bright_black
  vim.g.terminal_color_9 = p.bright_red
  vim.g.terminal_color_10 = p.bright_green
  vim.g.terminal_color_11 = p.bright_yellow
  vim.g.terminal_color_12 = p.bright_blue
  vim.g.terminal_color_13 = p.bright_magenta
  vim.g.terminal_color_14 = p.bright_cyan
  vim.g.terminal_color_15 = p.bright_white
end

return M
