-- ghostember.lua
-- A Neovim colorscheme generated from a Ghostty terminal palette.
-- Warm ember reds/oranges against a near-black background, with cool
-- blue/cyan accents pulled from the same 16-color palette.

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "ghostember"

-- Palette -------------------------------------------------------------
-- Taken directly from the supplied Ghostty config.
local p = {
	bg = "#040404", -- background / palette 0
	fg = "#feffff", -- foreground
	cursor = "#feffff",
	cursor_tx = "#000000",
	sel_bg = "#606060",
	sel_fg = "#ffffff",

	black = "#040404", -- 0
	red = "#d84a33", -- 1
	green = "#5da602", -- 2
	yellow = "#eebb6e", -- 3
	blue = "#417ab3", -- 4
	tan = "#e5c499", -- 5 (magenta slot)
	cyan = "#bdcfe5", -- 6
	white = "#dbded8", -- 7

	gray = "#685656", -- 8  bright black
	br_red = "#d76b42", -- 9
	br_green = "#99b52c", -- 10
	br_yellow = "#ffb670", -- 11
	br_blue = "#97d7ef", -- 12
	br_tan = "#aa7900", -- 13 bright magenta
	br_cyan = "#bdcfe5", -- 14
	br_white = "#e4d5c7", -- 15
}

-- A couple of derived UI tones (not in the palette, kept subtle and
-- close to bg/gray so the theme still feels native to the terminal).
local ui = {
	bg_alt = "#0d0b0b", -- slightly lifted bg for panels/floats
	bg_visual = p.sel_bg,
	bg_cursorline = "#111010",
	border = p.gray,
	comment = p.gray,
	muted = "#8a7a7a",
}

-- Helper ----------------------------------------------------------------
local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI ---------------------------------------------------------
hi("Normal", { fg = p.fg, bg = p.bg })
hi("NormalFloat", { fg = p.fg, bg = ui.bg_alt })
hi("NormalNC", { fg = p.fg, bg = p.bg })
hi("FloatBorder", { fg = ui.border, bg = ui.bg_alt })
hi("FloatTitle", { fg = p.yellow, bg = ui.bg_alt, bold = true })

hi("Cursor", { fg = p.cursor_tx, bg = p.cursor })
hi("CursorLine", { bg = ui.bg_cursorline })
hi("CursorLineNr", { fg = p.br_yellow, bold = true })
hi("CursorColumn", { bg = ui.bg_cursorline })
hi("ColorColumn", { bg = ui.bg_cursorline })

hi("LineNr", { fg = ui.comment })
hi("SignColumn", { fg = ui.comment, bg = p.bg })
hi("FoldColumn", { fg = ui.comment, bg = p.bg })
hi("Folded", { fg = ui.muted, bg = ui.bg_alt, italic = true })

hi("VertSplit", { fg = ui.border, bg = p.bg })
hi("WinSeparator", { fg = ui.border, bg = p.bg })

hi("Visual", { bg = ui.bg_visual, fg = p.sel_fg })
hi("VisualNOS", { bg = ui.bg_visual, fg = p.sel_fg })

hi("Search", { fg = p.black, bg = p.yellow })
hi("IncSearch", { fg = p.black, bg = p.br_yellow })
hi("CurSearch", { fg = p.black, bg = p.br_orange or p.br_red })

hi("Pmenu", { fg = p.fg, bg = ui.bg_alt })
hi("PmenuSel", { fg = p.black, bg = p.yellow, bold = true })
hi("PmenuSbar", { bg = ui.bg_alt })
hi("PmenuThumb", { bg = ui.border })
hi("WildMenu", { fg = p.black, bg = p.yellow })

hi("StatusLine", { fg = p.fg, bg = ui.bg_alt })
hi("StatusLineNC", { fg = ui.comment, bg = ui.bg_alt })
hi("TabLine", { fg = ui.comment, bg = ui.bg_alt })
hi("TabLineSel", { fg = p.black, bg = p.yellow, bold = true })
hi("TabLineFill", { bg = p.bg })

hi("MsgArea", { fg = p.fg, bg = p.bg })
hi("ModeMsg", { fg = p.green, bold = true })
hi("MoreMsg", { fg = p.green })
hi("Question", { fg = p.blue })
hi("WarningMsg", { fg = p.yellow, bold = true })
hi("ErrorMsg", { fg = p.red, bold = true })

hi("MatchParen", { fg = p.br_yellow, bold = true, underline = true })
hi("NonText", { fg = ui.border })
hi("Whitespace", { fg = ui.border })
hi("EndOfBuffer", { fg = p.bg })
hi("Conceal", { fg = ui.comment })
hi("SpecialKey", { fg = ui.comment })

hi("Directory", { fg = p.blue, bold = true })
hi("Title", { fg = p.br_yellow, bold = true })

-- Diffs ---------------------------------------------------------------
hi("DiffAdd", { fg = p.green, bg = "#0c150a" })
hi("DiffChange", { fg = p.blue, bg = "#0a1017" })
hi("DiffDelete", { fg = p.red, bg = "#170a08" })
hi("DiffText", { fg = p.yellow, bg = "#171208" })

-- Spelling --------------------------------------------------------------
hi("SpellBad", { sp = p.red, undercurl = true })
hi("SpellCap", { sp = p.blue, undercurl = true })
hi("SpellLocal", { sp = p.cyan, undercurl = true })
hi("SpellRare", { sp = p.tan, undercurl = true })

-- Syntax ----------------------------------------------------------------
hi("Comment", { fg = ui.comment, italic = true })

hi("Constant", { fg = p.tan })
hi("String", { fg = p.br_green })
hi("Character", { fg = p.br_green })
hi("Number", { fg = p.br_tan })
hi("Boolean", { fg = p.br_tan, bold = true })
hi("Float", { fg = p.br_tan })

hi("Identifier", { fg = p.br_blue })
hi("Function", { fg = p.yellow, bold = true })

hi("Statement", { fg = p.red })
hi("Conditional", { fg = p.red })
hi("Repeat", { fg = p.red })
hi("Label", { fg = p.red })
hi("Operator", { fg = p.white })
hi("Keyword", { fg = p.red, italic = true })
hi("Exception", { fg = p.red, bold = true })

hi("PreProc", { fg = p.cyan })
hi("Include", { fg = p.cyan })
hi("Define", { fg = p.cyan })
hi("Macro", { fg = p.cyan })
hi("PreCondit", { fg = p.cyan })

hi("Type", { fg = p.br_yellow })
hi("StorageClass", { fg = p.br_yellow })
hi("Structure", { fg = p.br_yellow })
hi("Typedef", { fg = p.br_yellow })

hi("Special", { fg = p.br_cyan })
hi("SpecialChar", { fg = p.br_cyan })
hi("Tag", { fg = p.br_cyan })
hi("Delimiter", { fg = ui.muted })
hi("SpecialComment", { fg = ui.comment, bold = true })
hi("Debug", { fg = p.red })

hi("Underlined", { fg = p.blue, underline = true })
hi("Ignore", { fg = ui.comment })
hi("Error", { fg = p.br_white, bg = p.red, bold = true })
hi("Todo", { fg = p.black, bg = p.yellow, bold = true })

-- LSP / Diagnostics -----------------------------------------------------
hi("DiagnosticError", { fg = p.red })
hi("DiagnosticWarn", { fg = p.yellow })
hi("DiagnosticInfo", { fg = p.blue })
hi("DiagnosticHint", { fg = p.cyan })
hi("DiagnosticOk", { fg = p.green })

hi("DiagnosticUnderlineError", { sp = p.red, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = p.yellow, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = p.blue, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = p.cyan, undercurl = true })

hi("LspReferenceText", { bg = ui.bg_cursorline })
hi("LspReferenceRead", { bg = ui.bg_cursorline })
hi("LspReferenceWrite", { bg = ui.bg_cursorline, underline = true })
hi("LspInlayHint", { fg = ui.muted, bg = ui.bg_alt, italic = true })
hi("LspCodeLens", { fg = ui.comment, italic = true })

-- Treesitter (@ groups) --------------------------------------------------
hi("@variable", { fg = p.fg })
hi("@variable.builtin", { fg = p.br_tan, italic = true })
hi("@variable.parameter", { fg = p.br_blue })
hi("@variable.parameter.builtin", { fg = p.br_blue, italic = true })
hi("@variable.member", { fg = p.cyan })

hi("@constant", { fg = p.tan })
hi("@constant.builtin", { fg = p.br_tan, bold = true })
hi("@constant.builtin.boolean", { fg = p.br_tan, bold = true })
hi("@constant.macro", { fg = p.cyan })

hi("@string", { fg = p.br_green })
hi("@string.escape", { fg = p.br_yellow, bold = true })
hi("@string.special", { fg = p.br_cyan })
hi("@string.regexp", { fg = p.br_cyan })
hi("@character", { fg = p.br_green })
hi("@character.special", { fg = p.br_yellow, bold = true })
hi("@number", { fg = p.br_tan })
hi("@number.float", { fg = p.br_tan })
hi("@boolean", { fg = p.br_tan, bold = true })
hi("@float", { fg = p.br_tan })

hi("@function", { fg = p.yellow, bold = true })
hi("@function.builtin", { fg = p.br_yellow, italic = true })
hi("@function.call", { fg = p.br_yellow })
hi("@function.macro", { fg = p.cyan })
hi("@method", { fg = p.yellow })
hi("@method.call", { fg = p.br_yellow })
hi("@constructor", { fg = p.br_yellow })
hi("@parameter", { fg = p.br_blue })

-- Struct/field/namespace access -- important for languages like Odin,
-- Rust, Go where `pkg.Field` / `obj.method()` show up constantly.
hi("@field", { fg = p.cyan })
hi("@property", { fg = p.cyan })
hi("@module", { fg = p.blue })
hi("@module.builtin", { fg = p.br_blue, italic = true })
hi("@namespace.builtin", { fg = p.br_blue, italic = true })

-- Modern (0.9+) split keyword sub-captures. Several grammars (Odin,
-- Rust, Zig, Go) tag these distinctly instead of a single @keyword.
hi("@keyword.import", { fg = p.red })
hi("@keyword.type", { fg = p.red, italic = true })
hi("@keyword.modifier", { fg = p.red, italic = true })
hi("@keyword.repeat", { fg = p.red })
hi("@keyword.conditional", { fg = p.red })
hi("@keyword.directive", { fg = p.br_red, bold = true })
hi("@keyword.directive.define", { fg = p.br_red, bold = true })
hi("@keyword.exception", { fg = p.red, bold = true })
hi("@keyword.coroutine", { fg = p.red, italic = true })
hi("@keyword.debug", { fg = p.red, italic = true })
hi("@keyword.storage", { fg = p.br_yellow })

hi("@attribute", { fg = p.cyan })
hi("@attribute.builtin", { fg = p.br_cyan, italic = true })
hi("@type.definition", { fg = p.br_yellow, bold = true })
hi("@type.qualifier", { fg = p.red, italic = true })

hi("@keyword", { fg = p.red, italic = true })
hi("@keyword.function", { fg = p.red, italic = true })
hi("@keyword.return", { fg = p.red, bold = true })
hi("@keyword.operator", { fg = p.red })
hi("@conditional", { fg = p.red })
hi("@repeat", { fg = p.red })
hi("@label", { fg = p.br_red })
hi("@exception", { fg = p.red, bold = true })

hi("@operator", { fg = p.white })
hi("@punctuation.delimiter", { fg = ui.muted })
hi("@punctuation.bracket", { fg = ui.muted })
hi("@punctuation.special", { fg = p.br_cyan })

hi("@type", { fg = p.br_yellow })
hi("@type.builtin", { fg = p.br_yellow, italic = true })
hi("@attribute", { fg = p.cyan })
hi("@namespace", { fg = p.blue })

hi("@tag", { fg = p.red })
hi("@tag.attribute", { fg = p.br_blue, italic = true })
hi("@tag.delimiter", { fg = ui.muted })

hi("@comment", { fg = ui.comment, italic = true })
hi("@comment.todo", { fg = p.black, bg = p.yellow, bold = true })
hi("@comment.warning", { fg = p.black, bg = p.yellow, bold = true })
hi("@comment.error", { fg = p.br_white, bg = p.red, bold = true })
hi("@comment.note", { fg = p.black, bg = p.blue, bold = true })

hi("@markup.heading", { fg = p.yellow, bold = true })
hi("@markup.strong", { fg = p.fg, bold = true })
hi("@markup.italic", { fg = p.fg, italic = true })
hi("@markup.link", { fg = p.blue, underline = true })
hi("@markup.link.url", { fg = p.cyan, underline = true })
hi("@markup.raw", { fg = p.br_green })
hi("@markup.list", { fg = p.red })

-- GitSigns / Git ----------------------------------------------------------
hi("GitSignsAdd", { fg = p.green })
hi("GitSignsChange", { fg = p.blue })
hi("GitSignsDelete", { fg = p.red })
hi("diffAdded", { fg = p.green })
hi("diffRemoved", { fg = p.red })
hi("diffChanged", { fg = p.blue })
hi("diffFile", { fg = p.yellow, bold = true })
hi("diffLine", { fg = ui.comment })

-- Telescope-ish / popup niceties (safe no-ops if plugin absent) ----------
hi("TelescopeNormal", { fg = p.fg, bg = ui.bg_alt })
hi("TelescopeBorder", { fg = ui.border, bg = ui.bg_alt })
hi("TelescopePromptNormal", { fg = p.fg, bg = ui.bg_alt })
hi("TelescopeSelection", { fg = p.fg, bg = ui.bg_cursorline, bold = true })
hi("TelescopeMatching", { fg = p.br_yellow, bold = true })

-- LSP semantic tokens ----------------------------------------------------
-- Many language servers (ols for Odin, rust-analyzer, gopls, clangd...)
-- send semantic tokens that Neovim renders via @lsp.type.*/@lsp.mod.*
-- groups. Neovim links these to the matching @-capture by default, but
-- only if that link hasn't already been overridden -- link them
-- explicitly so behavior is consistent across servers/grammars.
local lsp_links = {
	namespace = "@module",
	type = "@type",
	class = "@type",
	enum = "@type",
	enumMember = "@constant",
	interface = "@type",
	struct = "@type",
	typeParameter = "@variable.parameter",
	parameter = "@variable.parameter",
	variable = "@variable",
	property = "@property",
	field = "@field",
	["function"] = "@function",
	method = "@method",
	macro = "@function.macro",
	keyword = "@keyword",
	modifier = "@keyword.modifier",
	comment = "@comment",
	string = "@string",
	number = "@number",
	regexp = "@string.regexp",
	operator = "@operator",
	decorator = "@attribute",
	event = "@constant",
	label = "@label",
}
for lsp_type, link_group in pairs(lsp_links) do
	hi("@lsp.type." .. lsp_type, { link = link_group })
end

-- Modifiers layer on top of the base type above (readonly, deprecated...)
hi("@lsp.mod.readonly", { italic = true })
hi("@lsp.mod.deprecated", { strikethrough = true })
hi("@lsp.mod.defaultLibrary", { italic = true })
hi("@lsp.typemod.variable.readonly", { fg = p.tan })
hi("@lsp.typemod.variable.defaultLibrary", { fg = p.br_tan, italic = true })

return p
