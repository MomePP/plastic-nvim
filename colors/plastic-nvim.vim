lua << EOF
vim.g.colors_name = "plastic-nvim"

--[[ 
    Dark Colors
    @syntax-hue:          220;
    @syntax-saturation:   13%;
    @syntax-brightness:   18%;
    @syntax-fg:     @mono-1;
    @syntax-gutter-background-color-selected: lighten(@syntax-bg, 8%);
    for color in $(cat colors/one-nvim.vim | head -n 41 | tail -n 28 | cut -d '#' -f2 | cut -d '"' -f1); do hex2xterm $color | grep 'Hexadecimal\|xterm256'; done
--]]
mono_1        = {"#c6ccd7", 145, "mono_1"}  -- hsl(@syntax-hue, 14%, 71%);
mono_2        = {"#a9b2c3", 102, "mono_2"}  -- hsl(@syntax-hue,  9%, 55%);
mono_3        = {"#5f6672",  59, "mono_3"}  -- hsl(@syntax-hue, 10%, 40%);
mono_4        = {"#4b5263", 240, "mono_4"}  --
hue_1         = {"#56b6c2", 247, "hue_1"}   -- hsl(187, 47%, 55%);
hue_2         = {"#61afef",  75, "hue_2"}   -- hsl(207, 82%, 66%);
hue_3         = {"#b57edc", 176, "hue_3"}   -- hsl(286, 60%, 67%);
hue_4         = {"#98c379", 114, "hue_4"}   -- hsl( 95, 38%, 62%);
hue_5         = {"#e06c75", 168, "hue_5"}   -- hsl(355, 65%, 65%);
hue_5_2       = {"#be5046", 131, "hue_5_2"} -- hsl(  5, 48%, 51%);
hue_6         = {"#d19a66", 247, "hue_6"}   -- hsl( 29, 54%, 61%);
hue_6_2       = {"#e5c07b", 180, "hue_6_2"} -- hsl( 39, 67%, 69%);
syntax_bg     = {"#21252b",  17, "syntax_bg"}     -- hsl(@syntax-hue, @syntax-saturation, @syntax-brightness);
syntax_gutter = {"#636d83", 241, "syntax_gutter"} -- darken(@syntax-fg, 26%);
syntax_cursor = {"#2c323c",  23, "syntax_cursor"} 
syntax_accent = {"#1085ff",  69, "syntax_accent"} -- hsl(@syntax-hue, 100%, 66% );
vertsplit     = {"#181a1f", 234, "vertsplit"}
special_grey  = {"#3b4048", 238, "special_grey"}
visual_grey   = {"#3e4452",  59, "visual_grey"}
pmenu         = {"#333841",  59, "pmenu"}
term_black    = {"#282c34",  17, "term_black"}
term_blue     = {"#61afef",  75, "term_blue"}
term_cyan     = {"#56b6c2", 247, "term_cyan"}
term_white    = {"#dcdfe4", 188, "term_white"}
term_8        = {"#5d677a", 242, "term_8"}
syntax_color_added    = {"#98c379", 78, "syntax_color_added"}     -- hsl(150,  60%, 54%);
syntax_color_modified = {"#e5c08b", 250, "syntax_color_modified"} -- hsl(40,   60%, 70%);
syntax_color_removed  = {"#e06c75", 244, "syntax_color_removed"}   -- hsl(0,    70%, 60%);
     
-- Common 
local pink = {"#d291e4", 251, "pink"}
syntax_color_renamed  = {"#33a0ff", 75, "syntax_color_renamed"}  -- hsl(208, 100%, 60%);

--[[ DO NOT EDIT `BG` NOR `FG`. ]]
local BG = "bg"
local FG = "fg"
local NONE = {}

--[[ These are the ones you should edit. ]]
-- This is the only highlight that must be defined separately.
local highlight_group_normal = {fg = mono_1, bg = NONE}

local normal = (function()
    if vim.g.plastic_nvim_transparent_bg ~= true then
        return  { fg = mono_1, bg = syntax_bg }
    else
        return  { fg = mono_1, bg = NONE }
    end
end)()

-- This is where the rest of your highlights should go.
local highlight_groups = {
    -------------------------------------------------------------
    -- Syntax Groups (descriptions and ordering from `:h w18`) --
    -------------------------------------------------------------
     Normal       = normal,
     NormalFloat  = normal,
     bold         = { style = 'bold'},
     ColorColumn  = { fg = none, bg = syntax_cursor },
     Conceal      = { fg = mono_4, bg = syntax_bg },
     Cursor       = { fg = none, bg = none, style = 'reverse' },
     CursorIM     = { fg = none, bg = none, style = 'reverse' },
     CursorColumn = { fg = none, bg = syntax_cursor },
     CursorLine   = { fg = none, bg = syntax_cursor },
     Directory    = { fg = hue_2 },
     ErrorMsg     = { fg = hue_5, bg = syntax_bg },
     VertSplit    = { fg = vertsplit },
     FloatBorder  = { fg = mono_1, bg = none},
     Folded       = { fg = mono_3, bg = syntax_bg },
     FoldColumn   = { fg = mono_3, bg = syntax_cursor },
     IncSearch    = { fg = hue_6, bg = mono_3 },
     LineNr       = { fg = mono_2 },
     CursorLineNr = { fg = mono_2, bg = syntax_cursor },
     MatchParen   = { fg = hue_5, bg = syntax_cursor, style = 'bold' },
     Italic       = { fg = none, style = 'italic'},
     ModeMsg      = { fg = mono_1 },
     MoreMsg      = { fg = mono_1 },
     NonText      = { fg = mono_3 },
     PMenu        = { fg = none, bg = pmenu },
     PMenuSel     = { fg = none, bg = mono_4 },
     PMenuSbar    = { fg = none, bg = syntax_bg },
     PMenuThumb   = { fg = none, bg = mono_1 },
     Question     = { fg = hue_2 },
     Search       = { fg = syntax_bg, bg = hue_6_2 },
     SpecialKey   = { fg = special_grey},
     Whitespace   = { fg = special_grey},
     StatusLine   = { fg = mono_1, bg = syntax_cursor },
     StatusLineNC = { fg = mono_3 },
     TabLine      = { fg = mono_1, bg = none },
     TabLineFill  = { fg = none, bg = none },
     TabLineSel   = { fg = hue_6, bg = none },
     Title        = { fg = mono_1, bg = none, style = 'bold'},
     Visual       = { fg = none, bg = visual_grey},
     VisualNOS    = { fg = none, bg = visual_grey},
     WarningMsg   = { fg = hue_5 },
     TooLong      = { fg = hue_5 },
     WildMenu     = { fg = mono_1, bg = mono_3 },
     SignColumn   = { fg = none, bg = none },
     Special      = { fg = hue_2 },

---------------------------
-- Vim Help Highlighting --
---------------------------

     helpCommand      = { fg = hue_6_2 },
     helpExample      = { fg = hue_6_2 },
     helpHeader       = { fg = mono_1, style = 'bold'},
     helpSectionDelim = { fg = mono_3,},

----------------------------------
-- Standard Syntax Highlighting --
----------------------------------

     Comment        = { fg = mono_3,  style = 'italic'},
     Constant       = { fg = mono_1, bg = none},
     String         = { fg = hue_4, bg = none},
     Character      = { fg = hue_1, bg = none},
     Number         = { fg = hue_1, bg = none},
     Boolean        = { fg = hue_1, bg = none},
     Float          = { fg = hue_1, bg = none},
     Identifier     = { fg = mono_1, bg = none},
     Function       = { fg = hue_6, bg = none},
     Statement      = { fg = hue_5, bg = none},
     Conditional    = { fg = hue_5, bg = none},
     Repeat         = { fg = hue_5, bg = none},
     Label          = { fg = hue_6_2, bg = none},
     Operator       = { fg = hue_5, bg = none},
     Keyword        = { fg = hue_5, bg = none},
     Exception      = { fg = hue_5, bg = none},
     PreProc        = { fg = hue_5, bg = none},
     Include        = { fg = hue_5, bg = none},
     Define         = { fg = hue_5, bg = none},
     Macro          = { fg = hue_5, bg = none},
     PreCondit      = { fg = hue_5, bg = none},
     Type           = { fg = hue_2, bg = none},
     StorageClass   = { fg = hue_2, bg = none},
     Structure      = { fg = hue_2, bg = none},
     Typedef        = { fg = hue_2, bg = none},
     Special        = { fg = hue_6_2, bg = none},
     SpecialChar    = { fg = hue_1, bg = none},
     Tag            = { fg = none },
     Delimiter      = { fg = mono_2 },
     SpecialComment = { fg = none },
     Debug          = { fg = none },
     Underlined     = { fg = hue_2, style = 'underline' },
     Ignore         = { fg = none },
     Error          = { fg = hue_5, bg = none, style = 'undercurl' },
     Todo           = { fg = hue_3, bg = none, style = 'italic' },

-----------------------
-- Diff Highlighting --
-----------------------

     DiffAdd     = { fg = syntax_color_added },
     DiffChange  = { fg = syntax_color_modified },
     DiffDelete  = { fg = syntax_color_removed },
     DiffText    = { fg = hue_2 },
     DiffAdded   = { fg = hue_4 },
     DiffFile    = { fg = hue_5 },
     DiffNewFile = { fg = hue_4 },
     DiffLine    = { fg = hue_2 },
     DiffRemoved = { fg = hue_5 },

---------------------------
-- Filetype Highlighting --
---------------------------

-- Asciidoc
     asciidocListingBlock = { fg = mono_2 },

-- C/C++ highlighting
     cInclude           = { fg = hue_5 },
     cPreCondit         = { fg = hue_3 },
     cPreConditMatch    = { fg = hue_3 },
     cType              = { fg = hue_2 },
     cStorageClass      = { fg = hue_2 },
     cStructure         = { fg = hue_2 },
     cOperator          = { fg = hue_5 },
     cStatement         = { fg = hue_5 },
     cTODO              = { fg = hue_3 },
     cConstant          = { fg = mono_1 },
     cSpecial           = { fg = hue_6_2 },
     cSpecialCharacter  = { fg = hue_1 },
     cString            = { fg = hue_4 },
     cppType            = { fg = hue_2 },
     cppStorageClass    = { fg = hue_2 },
     cppStructure       = { fg = hue_2 },
     cppModifier        = { fg = hue_3 },
     cppOperator        = { fg = hue_5 },
     cppAccess          = { fg = hue_3 },
     cppStatement       = { fg = hue_5 },
     cppConstant        = { fg = mono_1 },
     cCppString         = { fg = hue_4 },

-- Cucumber
     cucumberGiven           = { fg = hue_2 },
     cucumberWhen            = { fg = hue_2 },
     cucumberWhenAnd         = { fg = hue_2 },
     cucumberThen            = { fg = hue_2 },
     cucumberThenAnd         = { fg = hue_2 },
     cucumberUnparsed        = { fg = hue_6 },
     cucumberFeature         = { fg = hue_5, style = 'bold'},
     cucumberBackground      = { fg = hue_3, style = 'bold'},
     cucumberScenario        = { fg = hue_3, style = 'bold'},
     cucumberScenarioOutline = { fg = hue_3, style = 'bold'},
     cucumberTags            = { fg = mono_3, style = 'bold'},
     cucumberDelimiter       = { fg = mono_3, style = 'bold'},

-- CSS/Sass
     cssAttrComma         = { fg = hue_3 },
     cssAttributeSelector = { fg = hue_4 },
     cssBraces            = { fg = mono_2 },
     cssClassName         = { fg = hue_6 },
     cssClassNameDot      = { fg = hue_6 },
     cssDefinition        = { fg = hue_3 },
     cssFontAttr          = { fg = hue_6 },
     cssFontDescriptor    = { fg = hue_3 },
     cssFunctionName      = { fg = hue_2 },
     cssIdentifier        = { fg = hue_2 },
     cssImportant         = { fg = hue_3 },
     cssInclude           = { fg = mono_1 },
     cssIncludeKeyword    = { fg = hue_3 },
     cssMediaType         = { fg = hue_6 },
     cssProp              = { fg = hue_1 },
     cssPseudoClassId     = { fg = hue_6 },
     cssSelectorOp        = { fg = hue_3 },
     cssSelectorOp2       = { fg = hue_3 },
     cssStringQ           = { fg = hue_4 },
     cssStringQQ          = { fg = hue_4 },
     cssTagName           = { fg = hue_5 },
     cssAttr              = { fg = hue_6 },
     sassAmpersand      = { fg = hue_5 },
     sassClass          = { fg = hue_6_2 },
     sassControl        = { fg = hue_3 },
     sassExtend         = { fg = hue_3 },
     sassFor            = { fg = mono_1 },
     sassProperty       = { fg = hue_1 },
     sassFunction       = { fg = hue_1 },
     sassId             = { fg = hue_2 },
     sassInclude        = { fg = hue_3 },
     sassMedia          = { fg = hue_3 },
     sassMediaOperators = { fg = mono_1 },
     sassMixin          = { fg = hue_3 },
     sassMixinName      = { fg = hue_2 },
     sassMixing         = { fg = hue_3 },
     scssSelectorName   = { fg = hue_6_2 },

-- Elixir highlighting
     elixirModuleDefine      = 'Define',
     elixirAlias             = { fg = hue_6_2 },
     elixirAtom              = { fg = hue_1 },
     elixirBlockDefinition   = { fg = hue_3 },
     elixirModuleDeclaration = { fg = hue_6 },
     elixirInclude           = { fg = hue_5 },
     elixirOperator          = { fg = hue_6 },

-- Git and git related plugins
     gitcommitComment        = { fg = mono_3 },
     gitcommitUnmerged       = { fg = hue_4 },
     gitcommitOnBranch       = { fg = none},
     gitcommitBranch         = { fg = hue_3 },
     gitcommitDiscardedType  = { fg = hue_5 },
     gitcommitSelectedType   = { fg = hue_4 },
     gitcommitHeader         = { fg = none},
     gitcommitUntrackedFile  = { fg = hue_1 },
     gitcommitDiscardedFile  = { fg = hue_5 },
     gitcommitSelectedFile   = { fg = hue_4 },
     gitcommitUnmergedFile   = { fg = hue_6_2 },
     gitcommitFile           = { fg = none},
     gitcommitNoBranch       = 'gitcommitBranch',
     gitcommitUntracked      = 'gitcommitComment',
     gitcommitDiscarded      = 'gitcommitComment',
     gitcommitDiscardedArrow = 'gitcommitDiscardedFile',
     gitcommitSelectedArrow  = 'gitcommitSelectedFile',
     gitcommitUnmergedArrow  = 'gitcommitUnmergedFile',
     SignifySignAdd          = { fg = syntax_color_added },
     SignifySignChange       = { fg = syntax_color_modified },
     SignifySignDelete       = { fg = syntax_color_removed },
     GitGutterAdd            = 'SignifySignAdd',
     GitGutterChange         = 'SignifySignChange',
     GitGutterDelete         = 'SignifySignDelete',
     GitSignsAdd             = 'SignifySignAdd',
     GitSignsChange          = 'SignifySignChange',
     GitSignsDelete          = 'SignifySignDelete',

-- Go
     goDeclaration  = { fg = hue_3 },
     goField        = { fg = hue_5 },
     goMethod       = { fg = hue_1 },
     goType         = { fg = hue_3 },
     goUnsignedInts = { fg = hue_1 },

-- Haskell highlighting
     haskellDeclKeyword    = { fg = hue_2 },
     haskellType           = { fg = hue_4 },
     haskellWhere          = { fg = hue_5 },
     haskellImportKeywords = { fg = hue_2 },
     haskellOperators      = { fg = hue_5 },
     haskellDelimiter      = { fg = hue_2 },
     haskellIdentifier     = { fg = hue_6 },
     haskellKeyword        = { fg = hue_5 },
     haskellNumber         = { fg = hue_1 },
     haskellString         = { fg = hue_1 },

-- HTML
     htmlArg            = { fg = hue_6 },
     htmlTagName        = { fg = hue_5 },
     htmlTagN           = { fg = hue_5 },
     htmlSpecialTagName = { fg = hue_5 },
     htmlTag            = { fg = mono_2 },
     htmlEndTag         = { fg = mono_2 },
     MatchTag           = { fg = hue_5, bg = syntax_cursor, style = 'bold,underline'},

-- JavaScript
     coffeeString           = { fg = hue_4 },
     javaScriptBraces       = { fg = mono_2 },
     javaScriptFunction     = { fg = hue_3 },
     javaScriptIdentifier   = { fg = hue_3 },
     javaScriptNull         = { fg = hue_6 },
     javaScriptNumber       = { fg = hue_6 },
     javaScriptRequire      = { fg = hue_1 },
     javaScriptReserved     = { fg = hue_3 },
-- httpc.//github.com/pangloss/vim-javascript
     jsArrowFunction        = { fg = hue_3 },
     jsBraces               = { fg = mono_2 },
     jsClassBraces          = { fg = mono_2 },
     jsClassKeywords        = { fg = hue_3 },
     jsDocParam             = { fg = hue_2 },
     jsDocTags              = { fg = hue_3 },
     jsFuncBraces           = { fg = mono_2 },
     jsFuncCall             = { fg = hue_2 },
     jsFuncParens           = { fg = mono_2 },
     jsFunction             = { fg = hue_3 },
     jsGlobalObjects        = { fg = hue_6_2 },
     jsModuleWords          = { fg = hue_3 },
     jsModules              = { fg = hue_3 },
     jsNoise                = { fg = mono_2 },
     jsNull                 = { fg = hue_6 },
     jsOperator             = { fg = hue_3 },
     jsParens               = { fg = mono_2 },
     jsStorageClass         = { fg = hue_3 },
     jsTemplateBraces       = { fg = hue_5_2 },
     jsTemplateVar          = { fg = hue_4 },
     jsThis                 = { fg = hue_5 },
     jsUndefined            = { fg = hue_6 },
     jsObjectValue          = { fg = hue_2 },
     jsObjectKey            = { fg = hue_1 },
     jsReturn               = { fg = hue_3 },
-- httpc.//github.com/othree/yajs.vim
     javascriptArrowFunc    = { fg = hue_3 },
     javascriptClassExtends = { fg = hue_3 },
     javascriptClassKeyword = { fg = hue_3 },
     javascriptDocNotation  = { fg = hue_3 },
     javascriptDocParamName = { fg = hue_2 },
     javascriptDocTags      = { fg = hue_3 },
     javascriptEndColons    = { fg = mono_3 },
     javascriptExport       = { fg = hue_3 },
     javascriptFuncArg      = { fg = mono_1 },
     javascriptFuncKeyword  = { fg = hue_3 },
     javascriptIdentifier   = { fg = hue_5 },
     javascriptImport       = { fg = hue_3 },
     javascriptObjectLabel  = { fg = mono_1 },
     javascriptOpSymbol     = { fg = hue_1 },
     javascriptOpSymbols    = { fg = hue_1 },
     javascriptPropertyName = { fg = hue_4 },
     javascriptTemplateSB   = { fg = hue_5_2 },
     javascriptVariable     = { fg = hue_3 },

-- JSON
     jsonCommentError       = { fg = mono_1 },
     jsonKeyword            = { fg = hue_5 },
     jsonQuote              = { fg = mono_3 },
     jsonTrailingCommaError = { fg = hue_5, style = 'reverse' },
     jsonMissingCommaError  = { fg = hue_5, style = 'reverse' },
     jsonNoQuotesError      = { fg = hue_5, style = 'reverse' },
     jsonNumError           = { fg = hue_5, style = 'reverse' },
     jsonString             = { fg = hue_4 },
     jsonBoolean            = { fg = hue_3 },
     jsonNumber             = { fg = hue_6 },
     jsonStringSQError      = { fg = hue_5, style = 'reverse' },
     jsonSemicolonError     = { fg = hue_5, style = 'reverse' },

-- Markdown
     markdownUrl              = { fg = mono_3, stlye = 'underline' },
     markdownBold             = { fg = hue_6, style = 'bold' },
     markdownItalic           = { fg = hue_6, style = 'italic' },
     markdownCode             = { fg = hue_4 },
     markdownCodeBlock        = { fg = hue_5 },
     markdownCodeDelimiter    = { fg = hue_4 },
     markdownHeadingDelimiter = { fg = hue_5_2 },
     markdownH1               = { fg = hue_5 },
     markdownH2               = { fg = hue_5 },
     markdownH3               = { fg = hue_5 },
     markdownH3               = { fg = hue_5 },
     markdownH4               = { fg = hue_5 },
     markdownH5               = { fg = hue_5 },
     markdownH6               = { fg = hue_5 },
     markdownListMarker       = { fg = hue_5 },

-- PHP
     phpClass        = { fg = hue_6_2 },
     phpFunction     = { fg = hue_2 },
     phpFunctions    = { fg = hue_2 },
     phpInclude      = { fg = hue_3 },
     phpKeyword      = { fg = hue_3 },
     phpParent       = { fg = mono_3 },
     phpType         = { fg = hue_3 },
     phpSuperGlobals = { fg = hue_5 },

-- Pug (Formerly Jade)
     pugAttributesDelimiter = { fg = hue_6 },
     pugClass               = { fg = hue_6 },
     pugDocType             = { fg = mono_3, style = 'italic'},
     pugTag                 = { fg = hue_5 },

-- PureScript
     purescriptKeyword     = { fg = hue_3 },
     purescriptModuleName  = { fg = mono_1 },
     purescriptIdentifier  = { fg = mono_1 },
     purescriptType        = { fg = hue_6_2 },
     purescriptTypeVar     = { fg = hue_5 },
     purescriptConstructor = { fg = hue_5 },
     purescriptOperator    = { fg = mono_1 },

-- Python
     pythonImport          = { fg = hue_3 },
     pythonBuiltin         = { fg = hue_1 },
     pythonStatement       = { fg = hue_3 },
     pythonParam           = { fg = hue_6 },
     pythonEscape          = { fg = hue_5 },
     pythonSelf            = { fg = mono_2, style = 'italic'},
     pythonClass           = { fg = hue_2 },
     pythonOperator        = { fg = hue_3 },
     pythonEscape          = { fg = hue_5 },
     pythonFunction        = { fg = hue_2 },
     pythonKeyword         = { fg = hue_2 },
     pythonModule          = { fg = hue_3 },
     pythonStringDelimiter = { fg = hue_4 },
     pythonSymbol          = { fg = hue_1 },

-- Ruby 
     rubyBlock                     = { fg = hue_3 },
     rubyBlockParameter            = { fg = hue_5 },
     rubyBlockParameterList        = { fg = hue_5 },
     rubyCapitalizedMethod         = { fg = hue_3 },
     rubyClass                     = { fg = hue_3 },
     rubyConstant                  = { fg = hue_6_2 },
     rubyControl                   = { fg = hue_3 },
     rubyDefine                    = { fg = hue_3 },
     rubyEscape                    = { fg = hue_5 },
     rubyFunction                  = { fg = hue_2 },
     rubyGlobalVariable            = { fg = hue_5 },
     rubyInclude                   = { fg = hue_2 },
     rubyIncluderubyGlobalVariable = { fg = hue_5 },
     rubyInstanceVariable          = { fg = hue_5 },
     rubyInterpolation             = { fg = hue_1 },
     rubyInterpolationDelimiter    = { fg = hue_5 },
     rubyKeyword                   = { fg = hue_2 },
     rubyModule                    = { fg = hue_3 },
     rubyPseudoVariable            = { fg = hue_5 },
     rubyRegexp                    = { fg = hue_1 },
     rubyRegexpDelimiter           = { fg = hue_1 },
     rubyStringDelimiter           = { fg = hue_4 },
     rubySymbol                    = { fg = hue_1 },

-- Spelling
     SpellBad   = { fg = mono_3, style = 'undercurl'},
     SpellLocal = { fg = mono_3, style = 'undercurl'},
     SpellCap   = { fg = mono_3, style = 'undercurl'},
     SpellRare  = { fg = mono_3, style = 'undercurl'},

-- Vim
     vimCommand      = { fg = hue_3 },
     vimCommentTitle = { fg = mono_3, style = 'bold'},
     vimFunction     = { fg = hue_1 },
     vimFuncName     = { fg = hue_3 },
     vimHighlight    = { fg = hue_2 },
     vimLineComment  = { fg = mono_3, style = 'italic'},
     vimParenSep     = { fg = mono_2 },
     vimSep          = { fg = mono_2 },
     vimUserFunc     = { fg = hue_1 },
     vimVar          = { fg = hue_5 },

-- XML
     xmlAttrib  = { fg = hue_6_2 },
     xmlEndTag  = { fg = hue_5 },
     xmlTag     = { fg = hue_5 },
     xmlTagName = { fg = hue_5 },

-- ZSH
     zshCommands    = { fg = mono_1 },
     zshDeref       = { fg = hue_5 },
     zshShortDeref  = { fg = hue_5 },
     zshFunction    = { fg = hue_1 },
     zshKeyword     = { fg = hue_3 },
     zshSubst       = { fg = hue_5 },
     zshSubstDelim  = { fg = mono_3 },
     zshTypes       = { fg = hue_3 },
     zshVariableDef = { fg = hue_6 },

-- Rust
     rustExternCrate          = { fg = hue_5,  style = 'bold'},
     rustIdentifier           = { fg = hue_2 },
     rustDeriveTrait          = { fg = hue_4 },
     SpecialComment           = { fg = mono_3 },
     rustCommentLine          = { fg = mono_3 },
     rustCommentLineDoc       = { fg = mono_3 },
     rustCommentLineDocError  = { fg = mono_3 },
     rustCommentBlock         = { fg = mono_3 },
     rustCommentBlockDoc      = { fg = mono_3 },
     rustCommentBlockDocError = { fg = mono_3 },

-- Man
     manTitle  = 'String',
     manFooter = { fg = mono_3 },

-------------------------
-- Plugin Highlighting --
-------------------------

-- ALE (Asynchronous Lint Engine)
ALEWarningSign = { fg = hue_6_2 },
ALEErrorSign   = { fg = hue_5 },

-- Neovim NERDTree Background fix
NERDTreeFile = { fg = mono_1 },

-- Coc.nvim
CocFloating = { bg = none },
NormalFloating = { bg = none },

-----------------------------
--     LSP Highlighting    --
-----------------------------

LspDiagnosticsDefaultError           = { fg = hue_5 },
LspDiagnosticsDefaultWarning         = { fg = hue_6_2 },
LspDiagnosticsDefaultInformation     = { fg = hue_1 },
LspDiagnosticsDefaultHint            = { fg = hue_4 },
LspDiagnosticsVirtualTextError       = { fg = hue_5 },
LspDiagnosticsVirtualTextWarning     = { fg = hue_6_2 },
LspDiagnosticsVirtualTextInformation = { fg = hue_1 },
LspDiagnosticsVirtualTextHint        = { fg = hue_4 },
LspDiagnosticsUnderlineError         = { fg = hue_5 , style = 'underline' },
LspDiagnosticsUnderlineWarning       = { fg = hue_6_2 , style = 'underline' },
LspDiagnosticsUnderlineInformation   = { fg = hue_1 , style = 'underline' },
LspDiagnosticsUnderlineHint          = { fg = hue_4 , style = 'underline' },
LspDiagnosticsFloatingError          = { fg = hue_5 , bg = pmenu },
LspDiagnosticsFloatingWarning        = { fg = hue_6_2 , bg = pmenu },
LspDiagnosticsFloatingInformation    = { fg = hue_1 , bg = pmenu },
LspDiagnosticsFloatingHint           = { fg = hue_4 , bg = pmenu },
LspDiagnosticsSignError              = { fg = hue_5 },
LspDiagnosticsSignWarning            = { fg = hue_6_2 },
LspDiagnosticsSignInformation        = { fg = hue_1 },
LspDiagnosticsSignHint               = { fg = hue_4 },
LspReferenceText                     = { style = 'reverse' },
LspReferenceRead                     = { style = 'reverse' },
LspReferenceWrite                    = { fg = hue_6_2, style = 'reverse' },

-----------------------------
-- TreeSitter Highlighting --
-----------------------------

     TSAnnotation         = 'PreProc',
     TSAttribute          = 'PreProc',
     TSBoolean            = 'Boolean',
     TSCharacter          = 'Character',
     TSComment            = 'Comment',
     TSConditional        = 'Conditional',
     TSConstant           = 'Constant',
     TSConstBuiltin       = 'Special',
     TSConstMacro         = 'Define',
     TSConstructor        = 'Special',
     TSEmphasis           = 'Italic',
     -- TSError              = 'Error',
     TSException          = 'Exception',
     TSField              = 'Normal',
     TSFloat              = 'Float',
     TSFunction           = 'Function',
     TSFuncBuiltin        = 'Special',
     TSFuncMacro          = 'Macro',
     TSInclude            = 'Include',
     TSKeyword            = 'Keyword',
     TSKeywordFunction    = 'Keyword',
     TSKeywordOperator    = 'Operator',
     TSKeywordReturn      = 'Keyword',
     TSLabel              = 'Label',
     TSLiteral            = 'String',
     TSMethod             = 'Function',
     TSNamespace          = 'Include',
     TSNumber             = 'Number',
     TSOperator           = 'Operator',
     TSParameter          = 'Identifier',
     TSParameterReference = 'Identifier',
     TSProperty           = 'Identifier',
     TSPunctBracket       = 'Delimiter',
     TSPunctDelimiter     = 'Delimiter',
     TSPunctSpecial       = 'Delimiter',
     TSRepeat             = 'Repeat',
     TSString             = 'String',
     TSStringEscape       = 'SpecialChar',
     TSStringRegex        = 'String',
     TSStrong             = 'bold',
     TSTag                = 'Label',
     TSTagDelimiter       = 'Label',
     -- TSText               = { fg = hue_6_2 },
     TSTitle              = 'Title',
     TSType               = 'Type',
     TSTypeBuiltin        = 'Type',
     TSUnderline          = 'Underlined',
     TSURI                = 'Underlined',
     TSVariableBuiltin    = 'Special',

}

local terminal_ansi_colors = {
    [0]  = term_black,
    [1]  = hue_5,
    [2]  = hue_4,
    [3]  = hue_6_2,
    [4]  = term_blue,
    [5]  = hue_3,
    [6]  = term_cyan,
    [7]  = term_white,
    [8]  = term_8,
    [9]  = hue_5,
    [10] = hue_4,
    [11] = hue_6_2,
    [12] = term_blue,
    [13] = hue_3,
    [14] = term_cyan,
    [15] = term_white
}


require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_ansi_colors)

-- Thanks to Iron-E (https://github.com/Iron-E) for the template (Iron-E/nvim-highlite).
-- vim: ft=lua

EOF
