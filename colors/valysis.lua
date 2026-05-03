-- valysis.lua — Neovim colorscheme
-- Colors sourced directly from AppColors (Flutter dark theme)
-- Place at: ~/.config/nvim/colors/valysis.lua

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.g.colors_name = "valysis"
vim.o.background = "dark"

local c = {
  bg           = "#161314",   -- backgroundDark
  bg_dark      = "#0e0b0d",
  bg_surface   = "#1F1A1C",   -- surfaceDark
  bg_card      = "#2a2426",
  bg_container = "#332B2F",   -- surfaceContainerDark
  bg_sel       = "#3d2f33",
  bg_visual    = "#2e2226",

  fg           = "#f8f9e3",   -- onSurfaceDark
  fg_dim       = "#e7bdb6",   -- secondaryDark
  fg_muted     = "#b09890",
  fg_gutter    = "#4d4548",

  primary      = "#ff897d",   -- primaryDark
  primary_dim  = "#9c524b",   -- primaryContainerDark

  teal         = "#86d2e1",   -- tertiaryDark
  teal_dim     = "#2a7a8a",   -- derived from tertiaryContainerDark

  lavender     = "#B79CED",   -- accent
  mauve        = "#806561",   -- secondaryContainerDark
  pink         = "#e7bdb6",   -- secondaryDark

  success      = "#2BD900",
  warning      = "#FFD700",
  error_bg     = "#441e21",   -- errorContainerDark
  error_deep   = "#93000a",   -- errorDark

  diff_add     = "#0d1f0d",
  diff_del     = "#2a1214",
  diff_chg     = "#1a1a0a",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Editor ────────────────────────────────────────────
hi("Normal",        { fg = c.fg,        bg = c.bg })
hi("NormalFloat",   { fg = c.fg,        bg = c.bg_surface })
hi("NormalNC",      { fg = c.fg_dim,    bg = c.bg_dark })
hi("SignColumn",    { fg = c.fg_gutter, bg = c.bg })
hi("ColorColumn",   { bg = c.bg_surface })
hi("CursorLine",    { bg = c.bg_surface })
hi("CursorColumn",  { bg = c.bg_surface })
hi("CursorLineNr",  { fg = c.teal,      bold = true })
hi("LineNr",        { fg = c.fg_gutter })
hi("LineNrAbove",   { fg = c.fg_gutter })
hi("LineNrBelow",   { fg = c.fg_gutter })
hi("VertSplit",     { fg = c.bg_container })
hi("WinSeparator",  { fg = c.bg_container })
hi("Folded",        { fg = c.fg_muted,  bg = c.bg_surface, italic = true })
hi("FoldColumn",    { fg = c.fg_gutter, bg = c.bg })
hi("Conceal",       { fg = c.fg_muted })
hi("NonText",       { fg = c.fg_gutter })
hi("SpecialKey",    { fg = c.fg_gutter })
hi("Whitespace",    { fg = c.fg_gutter })
hi("EndOfBuffer",   { fg = c.bg })
hi("MatchParen",    { fg = c.teal,      bold = true, underline = true })
hi("Visual",        { bg = c.bg_visual })
hi("VisualNOS",     { bg = c.bg_visual })
hi("Cursor",        { fg = c.bg,        bg = c.teal })
hi("lCursor",       { fg = c.bg,        bg = c.teal })
hi("TermCursor",    { fg = c.bg,        bg = c.teal })
hi("Search",        { fg = c.bg,        bg = c.teal })
hi("IncSearch",     { fg = c.bg,        bg = c.primary })
hi("CurSearch",     { fg = c.bg,        bg = c.teal })
hi("Substitute",    { fg = c.bg,        bg = c.primary })

-- ── Status & Tab line ─────────────────────────────────
hi("StatusLine",    { fg = c.fg_dim,   bg = c.bg_surface })
hi("StatusLineNC",  { fg = c.fg_muted, bg = c.bg_dark })
hi("TabLine",       { fg = c.fg_muted, bg = c.bg_surface })
hi("TabLineFill",   { bg = c.bg_dark })
hi("TabLineSel",    { fg = c.fg,       bg = c.bg,    bold = true })
hi("WinBar",        { fg = c.fg_dim,   bg = c.bg })
hi("WinBarNC",      { fg = c.fg_muted, bg = c.bg_dark })

-- ── Popup / Menu ──────────────────────────────────────
hi("Pmenu",         { fg = c.fg,       bg = c.bg_surface })
hi("PmenuSel",      { fg = c.fg,       bg = c.bg_sel,  bold = true })
hi("PmenuSbar",     { bg = c.bg_card })
hi("PmenuThumb",    { bg = c.teal_dim })
hi("PmenuBorder",   { fg = c.bg_container, bg = c.bg_surface })
hi("WildMenu",      { fg = c.fg,       bg = c.bg_sel })
hi("ErrorMsg",      { fg = c.primary })
hi("WarningMsg",    { fg = c.warning })
hi("MoreMsg",       { fg = c.teal })
hi("Question",      { fg = c.teal })
hi("ModeMsg",       { fg = c.fg,       bold = true })
hi("MsgArea",       { fg = c.fg_dim })

-- ── Diagnostics ───────────────────────────────────────
hi("DiagnosticError",            { fg = c.primary })
hi("DiagnosticWarn",             { fg = c.warning })
hi("DiagnosticInfo",             { fg = c.teal })
hi("DiagnosticHint",             { fg = c.lavender })
hi("DiagnosticOk",               { fg = c.success })
hi("DiagnosticUnderlineError",   { sp = c.primary,  underline = true })
hi("DiagnosticUnderlineWarn",    { sp = c.warning,  underline = true })
hi("DiagnosticUnderlineInfo",    { sp = c.teal,     underline = true })
hi("DiagnosticUnderlineHint",    { sp = c.lavender, underline = true })
hi("DiagnosticVirtualTextError", { fg = c.primary,  bg = c.error_bg, italic = true })
hi("DiagnosticVirtualTextWarn",  { fg = c.warning,  bg = c.diff_chg, italic = true })
hi("DiagnosticVirtualTextInfo",  { fg = c.teal,     bg = c.diff_add, italic = true })
hi("DiagnosticVirtualTextHint",  { fg = c.lavender, italic = true })
hi("DiagnosticSignError",        { fg = c.primary })
hi("DiagnosticSignWarn",         { fg = c.warning })
hi("DiagnosticSignInfo",         { fg = c.teal })
hi("DiagnosticSignHint",         { fg = c.lavender })

-- ── Diff ──────────────────────────────────────────────
hi("DiffAdd",    { bg = c.diff_add })
hi("DiffDelete", { bg = c.diff_del })
hi("DiffChange", { bg = c.diff_chg })
hi("DiffText",   { bg = c.diff_chg, bold = true })
hi("Added",      { fg = c.success })
hi("Removed",    { fg = c.primary })
hi("Changed",    { fg = c.warning })

-- ── Syntax ────────────────────────────────────────────
hi("Comment",        { fg = "#a89898", italic = true })
hi("Constant",       { fg = c.primary_dim })
hi("String",         { fg = c.success })
hi("Character",      { fg = c.success })
hi("Number",         { fg = c.pink })
hi("Boolean",        { fg = c.primary })
hi("Float",          { fg = c.pink })
hi("Identifier",     { fg = c.fg })
hi("Function",       { fg = c.teal,   bold = true })
hi("Statement",      { fg = c.primary })
hi("Conditional",    { fg = c.primary })
hi("Repeat",         { fg = c.primary })
hi("Label",          { fg = c.primary })
hi("Operator",       { fg = c.teal_dim })
hi("Keyword",        { fg = c.primary, italic = true })
hi("Exception",      { fg = c.error_deep })
hi("PreProc",        { fg = c.lavender })
hi("Include",        { fg = c.lavender })
hi("Define",         { fg = c.lavender })
hi("Macro",          { fg = c.lavender })
hi("PreCondit",      { fg = c.lavender })
hi("Type",           { fg = c.teal })
hi("StorageClass",   { fg = c.teal })
hi("Structure",      { fg = c.teal })
hi("Typedef",        { fg = c.teal })
hi("Special",        { fg = c.pink })
hi("SpecialChar",    { fg = c.pink })
hi("Tag",            { fg = c.teal })
hi("Delimiter",      { fg = c.fg_dim })
hi("SpecialComment", { fg = "#a89898", italic = true })
hi("Debug",          { fg = c.warning })
hi("Underlined",     { underline = true })
hi("Bold",           { bold = true })
hi("Italic",         { italic = true })
hi("Error",          { fg = c.primary })
hi("Todo",           { fg = c.bg, bg = c.teal, bold = true })

-- ── Treesitter ────────────────────────────────────────
hi("@variable",              { fg = c.fg })
hi("@variable.builtin",      { fg = c.primary,  italic = true })
hi("@variable.parameter",    { fg = c.fg_dim })
hi("@variable.member",       { fg = c.fg_dim })
hi("@constant",              { fg = c.primary_dim })
hi("@constant.builtin",      { fg = c.primary,  italic = true })
hi("@constant.macro",        { fg = c.lavender })
hi("@module",                { fg = c.teal })
hi("@module.builtin",        { fg = c.teal,     italic = true })
hi("@label",                 { fg = c.teal })
hi("@string",                { fg = c.success })
hi("@string.documentation",  { fg = "#a8c8a8",  italic = true })
hi("@string.regexp",         { fg = c.teal })
hi("@string.escape",         { fg = c.primary })
hi("@string.special",        { fg = c.teal })
hi("@character",             { fg = c.success })
hi("@character.special",     { fg = c.teal })
hi("@boolean",               { fg = c.primary })
hi("@number",                { fg = c.pink })
hi("@number.float",          { fg = c.pink })
hi("@type",                  { fg = c.teal })
hi("@type.builtin",          { fg = c.teal,     italic = true })
hi("@type.definition",       { fg = c.teal })
hi("@attribute",             { fg = c.lavender })
hi("@attribute.builtin",     { fg = c.lavender })
hi("@property",              { fg = c.fg_dim })
hi("@function",              { fg = c.teal,     bold = true })
hi("@function.builtin",      { fg = c.teal,     italic = true })
hi("@function.call",         { fg = c.teal })
hi("@function.macro",        { fg = c.lavender })
hi("@function.method",       { fg = c.teal })
hi("@function.method.call",  { fg = c.teal })
hi("@constructor",           { fg = c.primary })
hi("@operator",              { fg = c.teal_dim })
hi("@keyword",               { fg = c.primary,  italic = true })
hi("@keyword.coroutine",     { fg = c.primary })
hi("@keyword.function",      { fg = c.primary,  italic = true })
hi("@keyword.operator",      { fg = c.teal_dim })
hi("@keyword.import",        { fg = c.lavender })
hi("@keyword.type",          { fg = c.teal })
hi("@keyword.modifier",      { fg = c.primary })
hi("@keyword.repeat",        { fg = c.primary })
hi("@keyword.return",        { fg = c.primary })
hi("@keyword.debug",         { fg = c.warning })
hi("@keyword.exception",     { fg = c.error_deep })
hi("@keyword.conditional",   { fg = c.primary })
hi("@keyword.directive",     { fg = c.lavender })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket",   { fg = c.fg_dim })
hi("@punctuation.special",   { fg = c.teal_dim })
hi("@comment",               { fg = "#a89898",  italic = true })
hi("@comment.documentation", { fg = "#c0b8b0",  italic = true })
hi("@comment.error",         { fg = c.primary,  bold = true })
hi("@comment.warning",       { fg = c.warning,  bold = true })
hi("@comment.todo",          { fg = c.teal,     bold = true })
hi("@comment.note",          { fg = c.lavender, bold = true })
hi("@markup.strong",         { bold = true })
hi("@markup.italic",         { italic = true })
hi("@markup.strikethrough",  { strikethrough = true })
hi("@markup.underline",      { underline = true })
hi("@markup.heading",        { fg = c.teal,     bold = true })
hi("@markup.quote",          { fg = c.fg_dim,   italic = true })
hi("@markup.math",           { fg = c.pink })
hi("@markup.link",           { fg = c.teal,     underline = true })
hi("@markup.link.label",     { fg = c.teal })
hi("@markup.link.url",       { fg = c.lavender, underline = true })
hi("@markup.raw",            { fg = c.success })
hi("@markup.list",           { fg = c.primary })
hi("@markup.list.checked",   { fg = c.success })
hi("@markup.list.unchecked", { fg = c.fg_muted })
hi("@diff.plus",             { fg = c.success })
hi("@diff.minus",            { fg = c.primary })
hi("@diff.delta",            { fg = c.warning })
hi("@tag",                   { fg = c.primary })
hi("@tag.builtin",           { fg = c.primary,  italic = true })
hi("@tag.attribute",         { fg = c.teal })
hi("@tag.delimiter",         { fg = c.fg_muted })

-- ── LSP ───────────────────────────────────────────────
hi("LspReferenceText",            { bg = c.bg_card, underline = true })
hi("LspReferenceRead",            { bg = c.bg_card, underline = true })
hi("LspReferenceWrite",           { bg = c.bg_card, bold = true, underline = true })
hi("LspSignatureActiveParameter", { fg = c.teal,    bold = true })
hi("LspInlayHint",                { fg = c.fg_muted, bg = c.bg_surface, italic = true })
hi("LspCodeLens",                 { fg = c.fg_muted, italic = true })

-- ── Telescope ─────────────────────────────────────────
hi("TelescopeNormal",         { fg = c.fg,          bg = c.bg_surface })
hi("TelescopeBorder",         { fg = c.bg_container, bg = c.bg_surface })
hi("TelescopePromptNormal",   { fg = c.fg,          bg = c.bg_card })
hi("TelescopePromptBorder",   { fg = c.primary,     bg = c.bg_card })
hi("TelescopePromptTitle",    { fg = c.bg,          bg = c.primary,  bold = true })
hi("TelescopePreviewTitle",   { fg = c.bg,          bg = c.teal,     bold = true })
hi("TelescopeResultsTitle",   { fg = c.fg_muted,    bg = c.bg_surface })
hi("TelescopeSelection",      { bg = c.bg_sel })
hi("TelescopeSelectionCaret", { fg = c.primary })
hi("TelescopeMatching",       { fg = c.primary,     bold = true })
hi("TelescopePromptPrefix",   { fg = c.teal })

-- ── Neo-tree ──────────────────────────────────────────
hi("NeoTreeNormal",         { fg = c.fg,      bg = c.bg_dark })
hi("NeoTreeNormalNC",       { fg = c.fg_dim,  bg = c.bg_dark })
hi("NeoTreeRootName",       { fg = c.primary, bold = true })
hi("NeoTreeDirectoryName",  { fg = c.fg })
hi("NeoTreeDirectoryIcon",  { fg = c.teal })
hi("NeoTreeFileName",       { fg = c.fg })
hi("NeoTreeFileIcon",       { fg = c.fg_dim })
hi("NeoTreeDimText",        { fg = c.fg_muted })
hi("NeoTreeGitAdded",       { fg = c.success })
hi("NeoTreeGitDeleted",     { fg = c.primary })
hi("NeoTreeGitModified",    { fg = c.warning })
hi("NeoTreeGitConflict",    { fg = c.primary, bold = true })
hi("NeoTreeGitUntracked",   { fg = c.fg_muted })
hi("NeoTreeIndentMarker",   { fg = c.fg_gutter })
hi("NeoTreeExpander",       { fg = c.teal })
hi("NeoTreeWinSeparator",   { fg = c.bg_container, bg = c.bg_dark })
hi("NeoTreeCursorLine",     { bg = c.bg_surface })

-- ── nvim-cmp ──────────────────────────────────────────
hi("CmpItemAbbr",            { fg = c.fg_dim })
hi("CmpItemAbbrMatch",       { fg = c.primary,    bold = true })
hi("CmpItemAbbrMatchFuzzy",  { fg = c.primary })
hi("CmpItemAbbrDeprecated",  { fg = c.fg_muted,   strikethrough = true })
hi("CmpItemKindFunction",    { fg = c.teal })
hi("CmpItemKindMethod",      { fg = c.teal })
hi("CmpItemKindConstructor", { fg = c.primary })
hi("CmpItemKindClass",       { fg = c.teal })
hi("CmpItemKindInterface",   { fg = c.teal })
hi("CmpItemKindStruct",      { fg = c.teal })
hi("CmpItemKindVariable",    { fg = c.fg })
hi("CmpItemKindField",       { fg = c.fg_dim })
hi("CmpItemKindProperty",    { fg = c.fg_dim })
hi("CmpItemKindEnum",        { fg = c.teal })
hi("CmpItemKindEnumMember",  { fg = c.primary_dim })
hi("CmpItemKindKeyword",     { fg = c.primary })
hi("CmpItemKindSnippet",     { fg = c.lavender })
hi("CmpItemKindText",        { fg = c.success })
hi("CmpItemKindModule",      { fg = c.teal })
hi("CmpItemKindUnit",        { fg = c.pink })
hi("CmpItemKindValue",       { fg = c.pink })
hi("CmpItemKindConstant",    { fg = c.primary_dim })
hi("CmpItemKindTypeParameter", { fg = c.teal })
hi("CmpItemMenu",            { fg = c.fg_muted,   italic = true })

-- ── Gitsigns ──────────────────────────────────────────
hi("GitSignsAdd",      { fg = c.success })
hi("GitSignsChange",   { fg = c.warning })
hi("GitSignsDelete",   { fg = c.primary })
hi("GitSignsAddLn",    { bg = c.diff_add })
hi("GitSignsChangeLn", { bg = c.diff_chg })
hi("GitSignsDeleteLn", { bg = c.diff_del })

-- ── Indent Blankline ──────────────────────────────────
hi("IblIndent",                  { fg = c.fg_gutter })
hi("IblScope",                   { fg = c.primary_dim })
hi("IndentBlanklineChar",        { fg = c.fg_gutter })
hi("IndentBlanklineContextChar", { fg = c.primary_dim })

-- ── Which-key ─────────────────────────────────────────
hi("WhichKey",          { fg = c.teal })
hi("WhichKeyGroup",     { fg = c.primary })
hi("WhichKeyDesc",      { fg = c.fg })
hi("WhichKeySeparator", { fg = c.fg_muted })
hi("WhichKeyFloat",     { bg = c.bg_surface })
hi("WhichKeyBorder",    { fg = c.bg_container })
hi("WhichKeyValue",     { fg = c.fg_muted })

-- ── Notify ────────────────────────────────────────────
hi("NotifyERRORBorder", { fg = c.primary })
hi("NotifyWARNBorder",  { fg = c.warning })
hi("NotifyINFOBorder",  { fg = c.teal })
hi("NotifyERRORIcon",   { fg = c.primary })
hi("NotifyWARNIcon",    { fg = c.warning })
hi("NotifyINFOIcon",    { fg = c.teal })
hi("NotifyERRORTitle",  { fg = c.primary,  bold = true })
hi("NotifyWARNTitle",   { fg = c.warning,  bold = true })
hi("NotifyINFOTitle",   { fg = c.teal,     bold = true })
hi("NotifyERRORBody",   { fg = c.fg })
hi("NotifyWARNBody",    { fg = c.fg })
hi("NotifyINFOBody",    { fg = c.fg })
hi("NotifyDEBUGBody",   { fg = c.fg_dim })

-- ── Mini ──────────────────────────────────────────────
hi("MiniStatuslineModeNormal",   { fg = c.bg, bg = c.teal,     bold = true })
hi("MiniStatuslineModeInsert",   { fg = c.bg, bg = c.success,  bold = true })
hi("MiniStatuslineModeVisual",   { fg = c.bg, bg = c.primary,  bold = true })
hi("MiniStatuslineModeReplace",  { fg = c.bg, bg = c.error_deep, bold = true })
hi("MiniStatuslineModeCommand",  { fg = c.bg, bg = c.warning,  bold = true })
hi("MiniStatuslineModeOther",    { fg = c.bg, bg = c.lavender, bold = true })
hi("MiniStatuslineDevinfo",      { fg = c.fg_dim,  bg = c.bg_surface })
hi("MiniStatuslineFilename",     { fg = c.fg_dim,  bg = c.bg_surface })
hi("MiniStatuslineFileinfo",     { fg = c.fg_dim,  bg = c.bg_surface })
hi("MiniStatuslineInactive",     { fg = c.fg_muted, bg = c.bg_dark })
hi("MiniTablineCurrent",         { fg = c.fg,  bg = c.bg,     bold = true })
hi("MiniTablineVisible",         { fg = c.fg_dim,  bg = c.bg_dark })
hi("MiniTablineHidden",          { fg = c.fg_muted, bg = c.bg_dark })
hi("MiniTablineModifiedCurrent", { fg = c.primary, bg = c.bg,  bold = true })
hi("MiniTablineModifiedVisible", { fg = c.primary_dim, bg = c.bg_dark })
hi("MiniTablineModifiedHidden",  { fg = c.primary_dim, bg = c.bg_dark })
hi("MiniTablineFill",            { bg = c.bg_dark })
hi("MiniIndentscopeSymbol",      { fg = c.primary_dim })
hi("MiniCursorword",             { bg = c.bg_card, underline = true })
hi("MiniPickBorder",             { fg = c.bg_container })
hi("MiniPickBorderBusy",         { fg = c.primary })
hi("MiniPickBorderText",         { fg = c.teal,    bold = true })
hi("MiniPickMatchCurrent",       { bg = c.bg_sel })
hi("MiniPickMatchMarked",        { fg = c.warning, bold = true })
hi("MiniPickMatchRanges",        { fg = c.primary, bold = true })
hi("MiniPickPrompt",             { fg = c.primary })

-- ── Alpha / Dashboard ─────────────────────────────────
hi("AlphaHeader",   { fg = c.primary })
hi("AlphaButtons",  { fg = c.teal })
hi("AlphaShortcut", { fg = c.lavender })
hi("AlphaFooter",   { fg = c.fg_muted, italic = true })
