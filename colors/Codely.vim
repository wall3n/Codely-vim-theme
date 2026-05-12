" Vim color file
" Codely
" Created by wall3n with ThemeCreator (https://github.com/mswift42/themecreator)

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "Codely"


" ── Palette ──────────────────────────────────────────────────────────────────
let s:bg      = "#202124"
let s:fg      = "#EBDBB2"
let s:fg2     = "#d8c9a4"
let s:fg3     = "#c5b896"
let s:fg4     = "#b3a687"
let s:bg2     = "#323336"
let s:bg3     = "#444547"
let s:bg4     = "#565659"
let s:keyword = "#fb5245"
let s:builtin = "#FAC149"
let s:const   = "#D3869B"
let s:comment = "#A89984"
let s:func    = "#FAC149"
let s:str     = "#B8BB26"
let s:type    = "#8EC07C"
let s:var     = "#EBDBB2"
let s:warning = "#F0A732"
let s:warning2 = "#F49810"


" ── Base UI ──────────────────────────────────────────────────────────────────
exe 'hi Normal        guifg='s:fg'  guibg='s:bg
exe 'hi Cursor        guifg='s:bg'  guibg='s:fg
exe 'hi CursorLine                  guibg='s:bg2
exe 'hi CursorLineNr  guifg='s:str' guibg='s:bg
exe 'hi CursorColumn                guibg='s:bg2
exe 'hi ColorColumn                 guibg='s:bg2
exe 'hi LineNr        guifg='s:fg2' guibg='s:bg2
exe 'hi VertSplit     guifg='s:fg3' guibg='s:bg3
exe 'hi MatchParen    guifg='s:warning2' gui=underline'
exe 'hi StatusLine    guifg='s:fg2' guibg='s:bg3' gui=bold'
exe 'hi StatusLineNC  guifg='s:fg4' guibg='s:bg2
exe 'hi Pmenu         guifg='s:fg'  guibg='s:bg2
exe 'hi PmenuSel                    guibg='s:bg3
exe 'hi PmenuSbar                   guibg='s:bg3
exe 'hi PmenuThumb                  guibg='s:fg4
exe 'hi IncSearch     guifg='s:bg'  guibg='s:keyword
exe 'hi Search                      gui=underline'
exe 'hi Directory     guifg='s:const
exe 'hi Folded        guifg='s:fg4' guibg='s:bg
exe 'hi WildMenu      guifg='s:str' guibg='s:bg
exe 'hi SignColumn                  guibg='s:bg
exe 'hi TabLine       guifg='s:fg4' guibg='s:bg2' gui=none'
exe 'hi TabLineSel    guifg='s:fg'  guibg='s:bg3' gui=bold'
exe 'hi TabLineFill                 guibg='s:bg2
exe 'hi Visual                      guibg='s:bg3


" ── Syntax Base ──────────────────────────────────────────────────────────────
exe 'hi Boolean      guifg='s:const
exe 'hi Character    guifg='s:const
exe 'hi Comment      guifg='s:comment' gui=italic'
exe 'hi Conditional  guifg='s:keyword
exe 'hi Constant     guifg='s:const
exe 'hi Define       guifg='s:keyword
" approximated -- no exact token in reference
exe 'hi DiffAdd      guifg='s:str'     guibg='s:bg2' gui=bold'
exe 'hi DiffDelete                     guibg='s:bg2
" approximated -- no exact token in reference
exe 'hi DiffChange   guifg='s:type'    guibg='s:bg2
" approximated -- no exact token in reference
exe 'hi DiffText     guifg='s:fg'      guibg='s:bg3' gui=bold'
exe 'hi ErrorMsg     guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg   guifg='s:fg'      guibg='s:warning2
exe 'hi Float        guifg='s:const
exe 'hi Function     guifg='s:func
exe 'hi Identifier   guifg='s:type'    gui=italic'
exe 'hi Keyword      guifg='s:keyword' gui=bold'
exe 'hi Label        guifg='s:var
exe 'hi NonText      guifg='s:bg4'     guibg='s:bg2
exe 'hi Number       guifg='s:const
exe 'hi Operator     guifg='s:fg
exe 'hi PreProc      guifg='s:keyword
exe 'hi Special      guifg='s:fg
exe 'hi SpecialKey   guifg='s:fg2'     guibg='s:bg2
exe 'hi Statement    guifg='s:keyword
exe 'hi StorageClass guifg='s:type'    gui=italic'
exe 'hi String       guifg='s:str
exe 'hi Tag          guifg='s:type
exe 'hi Title        guifg='s:fg'      gui=bold'
exe 'hi Todo         guifg='s:fg2'     gui=inverse,bold'
exe 'hi Type         guifg='s:type
exe 'hi Underlined                     gui=underline'
exe 'hi SpellBad                       gui=undercurl guisp='s:keyword
exe 'hi SpellCap                       gui=undercurl guisp='s:type
exe 'hi SpellRare                      gui=undercurl guisp='s:const
exe 'hi SpellLocal                     gui=undercurl guisp='s:warning


" ── Neovim Terminal Mode ──────────────────────────────────────────────────────
let g:terminal_color_0  = s:bg
let g:terminal_color_1  = s:warning
let g:terminal_color_2  = s:keyword
let g:terminal_color_3  = s:bg4
let g:terminal_color_4  = s:func
let g:terminal_color_5  = s:builtin
let g:terminal_color_6  = s:fg3
let g:terminal_color_7  = s:str
let g:terminal_color_8  = s:bg2
let g:terminal_color_9  = s:warning2
let g:terminal_color_10 = s:fg2
let g:terminal_color_11 = s:var
let g:terminal_color_12 = s:type
let g:terminal_color_13 = s:const
let g:terminal_color_14 = s:fg4
let g:terminal_color_15 = s:comment


" ── Ruby ─────────────────────────────────────────────────────────────────────
exe 'hi rubyAttribute              guifg='s:builtin
exe 'hi rubyLocalVariableOrMethod  guifg='s:var
exe 'hi rubyGlobalVariable         guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable       guifg='s:var
exe 'hi rubyKeyword                guifg='s:keyword
exe 'hi rubyKeywordAsMethod        guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration       guifg='s:keyword' gui=bold'
exe 'hi rubyClass                  guifg='s:keyword' gui=bold'
exe 'hi rubyNumber                 guifg='s:const


" ── Python ───────────────────────────────────────────────────────────────────
exe 'hi pythonBuiltinFunc guifg='s:builtin


" ── Go ───────────────────────────────────────────────────────────────────────
exe 'hi goBuiltins guifg='s:builtin
let g:go_highlight_array_whitespace_error  = 1
let g:go_highlight_build_constraints       = 1
let g:go_highlight_chan_whitespace_error   = 1
let g:go_highlight_extra_types             = 1
let g:go_highlight_fields                  = 1
let g:go_highlight_format_strings          = 1
let g:go_highlight_function_calls          = 1
let g:go_highlight_function_parameters     = 1
let g:go_highlight_functions               = 1
let g:go_highlight_generate_tags           = 1
let g:go_highlight_operators               = 1
let g:go_highlight_space_tab_error         = 1
let g:go_highlight_string_spellcheck       = 1
let g:go_highlight_types                   = 1
let g:go_highlight_variable_assignments    = 1
let g:go_highlight_variable_declarations   = 1


" ── JavaScript ───────────────────────────────────────────────────────────────
exe 'hi jsBuiltins       guifg='s:builtin
exe 'hi jsFunction       guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects  guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var


" ── HTML ─────────────────────────────────────────────────────────────────────
exe 'hi htmlLink            guifg='s:var' gui=underline'
exe 'hi htmlStatement       guifg='s:keyword
exe 'hi htmlSpecialTagName  guifg='s:keyword


" ── Markdown ─────────────────────────────────────────────────────────────────
exe 'hi mkdCode guifg='s:builtin


" ── TreeSitter (Neovim ≥ 0.8) ────────────────────────────────────────────────
if has('nvim-0.8')

exe 'hi @comment               guifg='s:comment' gui=italic'
exe 'hi @comment.documentation guifg='s:comment' gui=italic'

exe 'hi @keyword           guifg='s:keyword' gui=bold'
exe 'hi @keyword.function  guifg='s:keyword' gui=bold'
exe 'hi @keyword.operator  guifg='s:keyword
exe 'hi @keyword.return    guifg='s:keyword' gui=bold'
exe 'hi @keyword.import    guifg='s:keyword
exe 'hi @keyword.conditional guifg='s:keyword' gui=bold'
exe 'hi @keyword.repeat    guifg='s:keyword' gui=bold'
exe 'hi @keyword.exception guifg='s:keyword' gui=bold'

exe 'hi @function          guifg='s:func
exe 'hi @function.call     guifg='s:func
exe 'hi @function.builtin  guifg='s:builtin
exe 'hi @function.macro    guifg='s:builtin

exe 'hi @method            guifg='s:func
exe 'hi @method.call       guifg='s:func

exe 'hi @constructor       guifg='s:type

exe 'hi @parameter         guifg='s:var
exe 'hi @parameter.reference guifg='s:var

exe 'hi @variable         guifg='s:var
exe 'hi @variable.builtin guifg='s:keyword

exe 'hi @field    guifg='s:var
exe 'hi @property guifg='s:var

exe 'hi @namespace guifg='s:type' gui=italic'

exe 'hi @type            guifg='s:type
exe 'hi @type.builtin    guifg='s:builtin
exe 'hi @type.qualifier  guifg='s:keyword
exe 'hi @type.definition guifg='s:type

exe 'hi @constant        guifg='s:const
exe 'hi @constant.builtin guifg='s:const
exe 'hi @constant.macro  guifg='s:const

exe 'hi @string         guifg='s:str
" approximated from reference/codely_dark.xml:DEFAULT_VALID_STRING_ESCAPE (#d79921)
exe 'hi @string.escape  guifg='s:warning
exe 'hi @string.special guifg='s:builtin

exe 'hi @number  guifg='s:const
exe 'hi @float   guifg='s:const
exe 'hi @boolean guifg='s:const

exe 'hi @operator              guifg='s:fg
exe 'hi @punctuation.bracket   guifg='s:fg
exe 'hi @punctuation.delimiter guifg='s:fg
exe 'hi @punctuation.special   guifg='s:builtin

exe 'hi @tag           guifg='s:type
exe 'hi @tag.attribute guifg='s:keyword
exe 'hi @tag.delimiter guifg='s:fg

exe 'hi @text.title    guifg='s:func'    gui=bold'
exe 'hi @text.literal  guifg='s:str
exe 'hi @text.uri      guifg='s:type'    gui=underline'
exe 'hi @text.strong                     gui=bold'
exe 'hi @text.emphasis                   gui=italic'
exe 'hi @text.todo     guifg='s:str'     gui=bold'
exe 'hi @text.warning  guifg='s:warning
exe 'hi @text.danger   guifg='s:keyword

exe 'hi @diff.plus  guifg='s:str
exe 'hi @diff.minus guifg='s:keyword
exe 'hi @diff.delta guifg='s:warning

endif


" ── LSP Diagnostics ──────────────────────────────────────────────────────────
exe 'hi DiagnosticError guifg='s:keyword
exe 'hi DiagnosticWarn  guifg='s:warning
exe 'hi DiagnosticInfo  guifg='s:type
exe 'hi DiagnosticHint  guifg='s:comment

exe 'hi DiagnosticUnderlineError gui=underline guisp='s:keyword
exe 'hi DiagnosticUnderlineWarn  gui=underline guisp='s:warning
exe 'hi DiagnosticUnderlineInfo  gui=underline guisp='s:type
exe 'hi DiagnosticUnderlineHint  gui=underline guisp='s:comment

exe 'hi DiagnosticVirtualTextError guifg='s:keyword' guibg='s:bg2
exe 'hi DiagnosticVirtualTextWarn  guifg='s:warning' guibg='s:bg2
exe 'hi DiagnosticVirtualTextInfo  guifg='s:type'    guibg='s:bg2
exe 'hi DiagnosticVirtualTextHint  guifg='s:comment' guibg='s:bg2

exe 'hi DiagnosticSignError guifg='s:keyword' guibg='s:bg
exe 'hi DiagnosticSignWarn  guifg='s:warning' guibg='s:bg
exe 'hi DiagnosticSignInfo  guifg='s:type'    guibg='s:bg
exe 'hi DiagnosticSignHint  guifg='s:comment' guibg='s:bg

exe 'hi LspReferenceText                guibg='s:bg3
exe 'hi LspReferenceWrite               guibg='s:bg3' gui=bold'
exe 'hi LspReferenceRead                guibg='s:bg3


" ── LSP Semantic Tokens (Neovim ≥ 0.9) ───────────────────────────────────────
if has('nvim-0.9')

hi link @lsp.type.class         Type
hi link @lsp.type.decorator     Special
hi link @lsp.type.enum          Type
hi link @lsp.type.enumMember    Constant
hi link @lsp.type.function      Function
hi link @lsp.type.interface     Type
hi link @lsp.type.macro         Special
hi link @lsp.type.method        Function
hi link @lsp.type.namespace     Type
hi link @lsp.type.parameter     Identifier
hi link @lsp.type.property      Identifier
hi link @lsp.type.struct        Type
hi link @lsp.type.type          Type
hi link @lsp.type.typeParameter Type
hi link @lsp.type.variable      Normal
exe 'hi @lsp.mod.deprecated gui=strikethrough'

endif


" ── Telescope ────────────────────────────────────────────────────────────────
exe 'hi TelescopeNormal         guifg='s:fg'      guibg='s:bg
exe 'hi TelescopeBorder         guifg='s:bg3'     guibg='s:bg
exe 'hi TelescopePromptNormal   guifg='s:fg'      guibg='s:bg2
exe 'hi TelescopePromptBorder   guifg='s:bg3'     guibg='s:bg2
exe 'hi TelescopeResultsBorder  guifg='s:bg3'     guibg='s:bg
exe 'hi TelescopePreviewBorder  guifg='s:bg3'     guibg='s:bg
exe 'hi TelescopeSelection      guifg='s:fg'      guibg='s:bg3
exe 'hi TelescopeSelectionCaret guifg='s:keyword' guibg='s:bg3
exe 'hi TelescopeMatching       guifg='s:func'    gui=bold'
exe 'hi TelescopeMultiSelection guifg='s:type'    guibg='s:bg2


" ── nvim-cmp ─────────────────────────────────────────────────────────────────
exe 'hi CmpItemAbbr            guifg='s:fg
exe 'hi CmpItemAbbrDeprecated  guifg='s:fg4'    gui=strikethrough'
exe 'hi CmpItemAbbrMatch       guifg='s:func'   gui=bold'
exe 'hi CmpItemAbbrMatchFuzzy  guifg='s:func
exe 'hi CmpItemKind            guifg='s:type
exe 'hi CmpItemMenu            guifg='s:comment
exe 'hi CmpDocumentation       guifg='s:fg'     guibg='s:bg2
exe 'hi CmpDocumentationBorder guifg='s:bg3'    guibg='s:bg2


" ── Gitsigns ─────────────────────────────────────────────────────────────────
exe 'hi GitSignsAdd              guifg='s:str'     guibg='s:bg
exe 'hi GitSignsChange           guifg='s:warning' guibg='s:bg
exe 'hi GitSignsDelete           guifg='s:keyword' guibg='s:bg
exe 'hi GitSignsAddNr            guifg='s:str'     guibg='s:bg2
exe 'hi GitSignsChangeNr         guifg='s:warning' guibg='s:bg2
exe 'hi GitSignsDeleteNr         guifg='s:keyword' guibg='s:bg2
exe 'hi GitSignsAddLn                              guibg='s:bg2
exe 'hi GitSignsChangeLn                           guibg='s:bg2
exe 'hi GitSignsCurrentLineBlame guifg='s:fg4'    gui=italic'


" ── NeoTree / NvimTree ────────────────────────────────────────────────────────
exe 'hi NeoTreeNormal         guifg='s:fg'      guibg='s:bg
exe 'hi NeoTreeNormalNC       guifg='s:fg2'     guibg='s:bg
exe 'hi NeoTreeDimText        guifg='s:fg4
exe 'hi NeoTreeDirectoryName  guifg='s:type
exe 'hi NeoTreeDirectoryIcon  guifg='s:type
exe 'hi NeoTreeFileName       guifg='s:fg
exe 'hi NeoTreeFileNameOpened guifg='s:func'    gui=bold'
exe 'hi NeoTreeGitAdded       guifg='s:str
exe 'hi NeoTreeGitConflict    guifg='s:keyword' gui=bold'
exe 'hi NeoTreeGitDeleted     guifg='s:keyword
exe 'hi NeoTreeGitIgnored     guifg='s:fg4
exe 'hi NeoTreeGitModified    guifg='s:warning
exe 'hi NeoTreeGitUnstaged    guifg='s:warning
exe 'hi NeoTreeGitUntracked   guifg='s:comment
exe 'hi NeoTreeGitStaged      guifg='s:str

exe 'hi NvimTreeNormal      guifg='s:fg'      guibg='s:bg
exe 'hi NvimTreeGitDirty    guifg='s:warning
exe 'hi NvimTreeGitNew      guifg='s:str
exe 'hi NvimTreeGitDeleted  guifg='s:keyword
exe 'hi NvimTreeFolderName  guifg='s:type
exe 'hi NvimTreeRootFolder  guifg='s:func'    gui=bold'


" ── indent-blankline (ibl) ───────────────────────────────────────────────────
exe 'hi IblIndent     guifg='s:bg3
exe 'hi IblScope      guifg='s:bg4
exe 'hi IblWhitespace guifg='s:bg2


" ── WhichKey ─────────────────────────────────────────────────────────────────
exe 'hi WhichKey          guifg='s:keyword' gui=bold'
exe 'hi WhichKeyGroup     guifg='s:type
exe 'hi WhichKeySeperator guifg='s:comment
exe 'hi WhichKeyDesc      guifg='s:fg
exe 'hi WhichKeyFloat     guifg='s:fg'      guibg='s:bg2
exe 'hi WhichKeyBorder    guifg='s:bg3'     guibg='s:bg2
exe 'hi WhichKeyValue     guifg='s:str


" ── Mini.nvim ────────────────────────────────────────────────────────────────
exe 'hi MiniStatuslineModeNormal   guifg='s:bg'  guibg='s:keyword' gui=bold'
exe 'hi MiniStatuslineModeInsert   guifg='s:bg'  guibg='s:str'     gui=bold'
exe 'hi MiniStatuslineModeVisual   guifg='s:bg'  guibg='s:const'   gui=bold'
exe 'hi MiniStatuslineModeReplace  guifg='s:bg'  guibg='s:warning' gui=bold'
exe 'hi MiniStatuslineModeCommand  guifg='s:bg'  guibg='s:builtin' gui=bold'
exe 'hi MiniStatuslineModeOther    guifg='s:bg'  guibg='s:type'    gui=bold'
exe 'hi MiniTablineCurrent         guifg='s:fg'  guibg='s:bg3'     gui=bold'
exe 'hi MiniTablineHidden          guifg='s:fg4' guibg='s:bg2
exe 'hi MiniTablineModifiedCurrent guifg='s:warning' guibg='s:bg3' gui=bold'


" Lualine theme colors (for reference in lualine config)
" normal:  { a: bg=s:keyword  fg=s:bg  bold }, { b: bg=s:bg3 fg=s:fg }, { c: bg=s:bg2 fg=s:fg2 }
" insert:  { a: bg=s:str     fg=s:bg  bold }
" visual:  { a: bg=s:const   fg=s:bg  bold }
" replace: { a: bg=s:warning fg=s:bg  bold }
" command: { a: bg=s:builtin fg=s:bg  bold }
