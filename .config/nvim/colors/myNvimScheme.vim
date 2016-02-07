set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

hi Boolean guifg=#CA7732
hi Comment guifg=#808080
hi Constant guifg=#9675A8
hi Cursor gui=reverse
hi CursorColumn guibg=#e5e5e5
hi CursorIM gui=None
hi CursorLine guibg=#323232
hi Delimiter gui=None
hi DiffAdd guibg=#add8e6
hi DiffChange guibg=#ffbbff
hi DiffDelete gui=bold guifg=#0000ff guibg=#e0ffff
hi DiffText gui=bold guibg=#ff0000
hi Directory guifg=#0000ff
hi Error guifg=#ffffff guibg=#ff0000
hi ErrorMsg guifg=#ffffff guibg=#ff0000
hi Float guifg=#888888
hi FoldColumn guifg=#00008b guibg=#bebebe
hi Folded guifg=#00008b guibg=#d3d3d3
hi Identifier guifg=#E8BF6A
hi Ignore guifg=#ffffff
hi IncSearch guibg=#155221
hi Include guifg=#CA7732
hi LineNr guifg=#888888
hi Macro guifg=#9675A8
hi MatchParen guifg=#FEEE28 guibg=#3B514D
hi ModeMsg gui=bold
hi MoreMsg gui=bold guifg=#2e8b57
hi NonText gui=bold guibg=#2B2B2B
hi Normal guifg=#A9B7C6 guibg=#2B2B2B
hi Number guifg=#6897BB
hi Pmenu guibg=#ffbbff
hi PmenuSbar guibg=#bebebe
hi PmenuSel guibg=#bebebe
hi PmenuThumb gui=reverse
hi PreCondit guifg=#9675A8
hi PreProc guifg=#a020f0
hi Question gui=bold guifg=#2e8b57
hi Search guibg=#32593D
hi SignColumn guifg=#00008b guibg=#bebebe
hi Special guifg=#CC7832
hi SpecialKey guifg=#6c7732
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement gui=bold guifg=#E8BF6A
hi StatusLine gui=bold,reverse
hi StatusLineNC gui=reverse
hi String guifg=#6A8759
hi TabLine gui=underline guibg=#d3d3d3
hi TabLineFill gui=reverse
hi TabLineSel gui=bold
hi Title gui=bold guifg=#BABABA
hi Todo guifg=#A7BF23
hi Type gui=bold guifg=#BABABA
hi Underlined gui=underline
hi VertSplit gui=reverse
hi Visual guibg=#204181
hi VisualNOS gui=bold,underline
hi WarningMsg guifg=#ff0000
hi WildMenu guifg=#9675A8 guibg=#ffff00
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Exception Statement
hi link Function Identifier
hi link Keyword Statement
hi link Label Statement
hi link Operator Statement
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Structure Type
hi link Tag Special
hi link Typedef Type
