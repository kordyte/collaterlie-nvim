local p = require('collaterlie_palette')

local function hi(fg, bg, special, specialcol)
  local o = { fg = fg, bg = bg, special = special, specialcol = specialcol }

  return o
end

local fg = {
  syn_literal1 = '#0f801e',
  syn_literal2 = '#08440f',
  syn_function1 = '#432b04',
  syn_function2 = '#7f5107',
  syn_variable1 = '#410745',
  syn_variable2 = '#780f81',
  syn_preproc1 = '#801010',
  syn_namespace = '#08440f',
  syn_metadata = '#818181',
  syn_todo = '#7f5107',
  syn_type1 = '#117980',
  syn_type2 = '#093e43',
  syn_keyword1 = '#070e44',
  syn_keyword2 = '#0e187f',
  syn_comment = '#e9c865',
  syn_text_title = '#0f801e',
  syn_text_literal = '#780f81',
  syn_text_reference = '#0e187f',
  syn_text_uri = '#070e44',
}

local bg = {
  syn_variable = '#fffaff', -- The background might only be applied for some highlights 
  syn_preproc = '#fffafa',
  syn_metadata = '#fffafa',
  syn_todo = '#fcfb9d',
  syn_keyword1 = '#fafaff',
  syn_keyword2 = '#fffdfa',
}

nyi = hi('#000000', '#ff2233', 'bold,undercurl', '#00ff00') -- Not Yet Implemented

normal = hi('#432b04', '#fefefd', nil, nil) -- Default text in edit area
gutter = hi(normal.fg, '#f9f8f5', nil, nil) -- numbering, gitsigns, and others inside the edit area
external = hi('#801010', '#ebeae7', nil, nil) -- Outside the edit area: tabline, EndOfBuffer
dialog = hi(normal.fg, '#fbf9e8', nil, nil)
dialogborder = hi('#7f5107', dialog.bg, nil, nil)
selected = hi('#484848', '#fefe50', nil, nil)
highlighted = hi('#484848', '#cbff97', nil, nil)
alert_error = hi('#e31c1c', '#fddddd', nil, nil) -- Signs and virtual texts, or other things that are not 'inline' text
alert_warn = hi('#7f7f03', '#fefedc', nil, nil)
alert_hint = hi('#780f81', '#f9defc', nil, nil)
alert_info = hi('#117980', '#ddfafc', nil, nil)
alert_ok = hi('#0f801e', '#defbe1', nil, nil)
inline_error = hi('#e31c1c', nil, 'bold', nil) -- Errors that are rendered within a block of text, unlike the alert
inline_warn = hi('#7f7f03', nil, 'bold', nil)
inline_hint = hi('#780f81', nil, 'bold', nil)
inline_info = hi('#117980', nil, 'bold', nil)
inline_ok = hi('#0f801e', nil, nil, nil)
diffaddsign = hi('#0f801e', '#defbe1', nil, nil) 
diffdeletesign = hi('#801010', '#fddddd', nil, nil)
diffchangesign = hi('#780f81', '#f9defc', nil, nil)
diffchangetext = hi(nil, '#f9defc', undercurl, '#780f81')

-- For help with the highlight groups, see: https://github.com/casr/vim-colors-reference

local ui_group = {
          Normal = normal, 
        NormalNC = gutter,  
         -- Normal text in non-current windows, will be used as the background when a dialog is shown

          Cursor = hi('#000000', '#f1990e', nil, nil), -- for the cursor highlights to work, 
         nCursor = hi('#000000', '#f1990e', nil, nil), -- the highlight group will need to be set for
         vCursor = hi('#000000', '#7f5107', nil, nil),   -- the cursor, e.g.
         iCursor = hi('#000000', '#192ce2', nil, nil),   -- set guicursor=n:block-nCursor
         rCursor = hi('#fddddd', '#e31c1c', nil, nil), 
         cCursor = hi('#000000', '#d319e2', nil, nil),

        CursorIM = hi(nil, nil, 'bold', nil),      -- for IME mode (inputing multibyte characters)
    CursorColumn = hi(nil, '#fef8e8', nil, nil),   -- for when cursorcolumn is set
      CursorLine = hi(nil, '#fef8e8', nil, nil),     -- for when cursorline is set

          LineNr = hi(normal.fg, gutter.bg, 'italic', nil),
    CursorLineNr = hi('#111111', '#fee8b8', 'bold,italic', nil),
      SignColumn = hi(nil, gutter.bg, nil, nil),
  CursorLineSign = hi(nil, '#fee8b8', nil, nil), 

      StatusLine = hi('#fdfdfc', '#7f5107', nil, nil), -- Irrelevant if using something like lualine
    StatusLineNC = hi(normal.fg, '#f0e2d8', nil, nil),

         MsgArea = gutter,

    QuickFixLine = hi(nil, '#fddddd', nil, nil),
    
    WinSeparator = hi('#7f5107', '#f9f9f5', nil, nil),
       VertSplit = 'WinSeparator',
          
          WinBar = hi(nil, gutter.bg, nil, nil),
        WinBarNC = hi(nil, nil, nil, nil),

         Tabline = hi(external.fg, external.bg, 'italic', nil),
     TabLineFill = external,
      TabLineSel = hi(external.fg, nil, 'bold,italic', nil),
           Title = hi(external.fg, nil, nil, nil), -- number in a tab with more than one window

      MatchParen = hi(nil, highlighted.bg, nil, nil),

     EndOfBuffer = external,    -- Bottom of screen when scrolled up
         NonText = hi('#f4a3a3', nil, nil, nil), 
      Whitespace = hi('#070e44', nil, nil, nil),
      SpecialKey = hi('#0f801e', nil, nil, nil), 

          Visual = hi(nil, '#fef0dc', nil, nil),
       VisualNOS = hi(nil, '#ededed', nil, nil),  -- for when window does not have focus (X11 only)

         Conceal = hi('#818181', nil, nil, nil), 

          Folded = hi('#0f801e', '#fefedc', nil, nil),
      FoldColumn = hi('#0f801e', '#fefedc', 'bold', nil),

          Search = highlighted,
       CurSearch = hi(highlighted.fg, highlighted.bg, 'bold', nil),
       IncSearch = hi(highlighted.fg, highlighted.bg, 'bold', nil),

           Pmenu = dialog, 
        PmenuSel = selected,
    PmenuSelBold = hi(selected.fg, selected.bg, 'bold', nil),
      PmenuThumb = hi(nil, '#f0e0a0', nil, nil), -- Only observed this in completion dialogs
       PmenuSbar = hi(nil, '#f8f0d8', nil, nil),

     NormalFloat = dialog,
      FloatTitle = hi(normal.fg, nil, 'bold' ,nil),
     FloatBorder = dialogborder,
     FloatShadow = hi(nil, dialogborder.fg, nil, nil), -- background is blended to form the shadow
        WildMenu = dialog,

        ErrorMsg = hi('#fefedc', '#e31c1c', 'bold', nil),   -- error messages displayed on the command line
      WarningMsg = hi('#7f5107', '#f4a3a3', nil, nil),
         MoreMsg = hi('#000000', '#fddddd', nil, nil),
        Question = 'MoreMsg',
         ModeMsg = hi('#202020', '#f8d59e', nil, nil),
    MsgSeparator = external,

        SpellBad = hi(nil, alert_error.fg, 'undercurl', alert_error.fg),
        SpellCap = hi(nil, nil, 'undercurl', alert_warn.fg),
       SpellRare = hi(nil, nil, 'undercurl', alert_hint.fg),
      SpellLocal = hi(nil, nil, 'undercurl', alert_hint.fg),

       Directory = hi('#192ce2', nil, nil, nil),

         DiffAdd = diffaddsign,
      DiffDelete = diffdeletesign,
      DiffChange = diffchangesign,
        DiffText = diffchangetext,
}

local diagnostic_group = {
             DiagnosticError = alert_error,
              DiagnosticWarn = alert_warn,
              DiagnosticInfo = alert_info,
              DiagnosticHint = alert_hint,
                DiagnosticOk = alert_ok,

    DiagnosticUnderlineError = hi(nil, nil, 'undercurl', '#e31c1c'),
     DiagnosticUnderlineWarn = hi(nil, nil, 'undercurl', '#f1990e'),
     DiagnosticUnderlineInfo = hi(nil, nil, 'undercurl', '#1fe0ed'),
     DiagnosticUnderlineHint = hi(nil, nil, 'undercurl', '#d319e2'),
       DiagnosticUnderlineOk = hi(nil, nil, 'undercurl', '#19e233'),

  DiagnosticVirtualTextError = alert_error, 
   DiagnosticVirtualTextWarn = alert_warn,
   DiagnosticVirtualTextInfo = alert_info,
   DiagnosticVirtualTextHint = alert_hint,
     DiagnosticVirtualTextOk = alert_ok,
  
     DiagnosticFloatingError = inline_error,  -- Can be observed with :lua vim.diagnostic.open_float() (assuming you there are diagnostics)
      DiagnosticFloatingWarn = inline_warn,
      DiagnosticFloatingInfo = inline_info,
      DiagnosticFloatingHint = inline_hint,
        DiagnosticFloatingOk = inline_ok,
  
         DiagnosticSignError = alert_error, 
          DiagnosticSignWarn = alert_warn,
          DiagnosticSignInfo = alert_info,
          DiagnosticSignHint = alert_hint,
            DiagnosticSignOk = alert_ok,
}

local telescope_group = {
          TelescopeNormal = dialog,
          TelescopeBorder = dialogborder, 
       TelescopeSelection = selected,
  TelescopeSelectionCaret = hi(normal.fg, selected.bg, nil, nil),
  TelescopeMultiSelection = selected,
        TelescopeMatching = highlighted,
}



-- Treesitter Capture Groups: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
-- The above site lists some of the capture groups observed in practice, or what I have guessed might
-- occur in different languages. If it's not in the list, it's marked NSTCG (not standard treesitter capture group)
--
-- LSP Groups Semantic Tokens: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_semanticTokens
--
--
-- Both TreeSitter and LSP can match. Priority is used in Neovim to decide which
-- one is applied last.
-- The order is:
-- Treesitter (lowest priority)
-- lsp.type
-- lsp.mod
-- lsp.typemod (highest priority)
--
-- LSP only provides type and mod, the typemod is a Neovim thing to allow
-- you to do specific things for a combination

syn_literal1 = hi('#0f801e', nil, nil, nil)
syn_literal2 = hi('#08440f', nil, nil, nil)
syn_literal3 = hi(syn_literal1.fg, '#defbe1', nil, nil) 

syn_variable1 = hi('#410745', nil, nil, nil) 
syn_variable2 = hi('#780f81', nil, nil, nil)
syn_variable3 = hi('#410745', '#fffaff', nil, nil)

syn_constant1 = hi('#08440f', nil, nil, nil) 
syn_constant2 = hi('#0f801e', nil, nil, nil)

syn_type1 = hi('#117980', nil, nil, nil)
syn_type2 = hi('#093e43', nil, nil, nil)
syn_type3 = hi('#117980', '#f6fefe', nil, nil)

syn_module1 = hi('#08440f', nil, nil, nil)

syn_keyword1 = hi('#070e44', '#fafaff', nil, nil)
syn_keyword2 = hi('#0e187f', '#fffdfa', nil, nil)
syn_keyword3 = hi(syn_keyword1.fg, syn_keyword1.bg, nil, nil)
syn_keyword4 = hi(syn_keyword2.fg, syn_keyword2.bg, nil, nil)

syn_function1 = hi('#432b04', nil, nil, nil)
syn_function2 = hi('#533b04', nil, nil, nil)
syn_function3 = hi('#7f5107', nil, nil, nil)

syn_macro1 = hi('#801010', nil, nil, nil)
syn_macro2 = hi('#801010', '#fffafa', nil, nil)

syn_metadata1 = hi('#818181', '#fffafa', 'bold', nil)

syn_comment = hi('#e9c865', nil, 'italic', nil)
syn_comment_special = hi('#7f5107', '#fcfb9d', 'bold,italic', nil)

syn_modifier1 = nyi

syn_text_title = hi('#101010', nil, 'underline', nil)

local lsp_group = {
      ['@lsp.type.namespace'] = syn_namespace,
           ['@lsp.type.type'] = syn_type1, 
          ['@lsp.type.class'] = syn_type1,
           ['@lsp.type.enum'] = syn_type1,
      ['@lsp.type.interface'] = hi(syn_type1.fg, nil, 'italic', nil),
         ['@lsp.type.struct'] = syn_type1,
  ['@lsp.type.typeParameter'] = syn_type3,
      ['@lsp.type.parameter'] = syn_variable3,
       ['@lsp.type.variable'] = syn_variable1,
       ['@lsp.type.property'] = syn_variable2,
     ['@lsp.type.enumMember'] = syn_type2,
          ['@lsp.type.event'] = syn_type2,
       ['@lsp.type.function'] = syn_function1,
         ['@lsp.type.method'] = syn_function2,
          ['@lsp.type.macro'] = syn_macro1,
        ['@lsp.type.keyword'] = syn_keyword1,
       ['@lsp.type.modifier'] = nyi,
        ['@lsp.type.comment'] = nyi,
         ['@lsp.type.string'] = syn_literal2,
         ['@lsp.type.number'] = syn_literal1,
         ['@lsp.type.regexp'] = syn_literal1,
       ['@lsp.type.operator'] = hi('#0e187f', nil, nil, nil),
      ['@lsp.type.decorator'] = syn_metadata1,
}

local treesitter_group = {


                      ['@boolean'] = syn_literal1,
                       ['@number'] = syn_literal1,
               ['@number.builtin'] = syn_literal2,
               ['@number.special'] = syn_literal2,
                        ['@float'] = syn_literal1,
                       ['@string'] = syn_literal2,
                ['@string.escape'] = hi(syn_literal1.fg, nil, 'bold', nil),  -- escape sequences
         ['@string.documentation'] = syn_literal1, -- Strings like Python doc strings
               ['@string.special'] = syn_literal2, -- special strings such as dates
               ['@string.special.symbol'] = nyi, --  N
               ['@string.special.path'] = nyi, --  N
               ['@string.special.url'] = nyi, --  N
                       ['@symbol'] = syn_literal3, -- Atoms and symbols
          ['@string.special.path'] = hi('#192ce2', nil, nil, nil),
                ['@string.regexp'] = syn_literal1,
                    ['@character'] = syn_literal1,
            ['@character.special'] = hi(syn_literal1.fg, nil, 'bold', nil),

                     ['@variable'] = syn_variable1,
             ['@variable.builtin'] = syn_variable2,
             ['@variable.parameter'] = nyi, -- N
             ['@variable.member'] = nyi, -- N
               ['@variable.array'] = syn_variable1, -- Perl
                ['@variable.hash'] = syn_variable1, -- Perl
               ['@variable.local'] = syn_variable1, 
              ['@variable.scalar'] = syn_variable1, -- Perl
                    ['@parameter'] = syn_variable3,
                        ['@field'] = syn_variable2,
                     ['@property'] = syn_variable2,

                     ['@constant'] = syn_constant1,
             ['@constant.builtin'] = syn_constant2,
               ['@constant.macro'] = syn_macro1,

                         ['@type'] = syn_type1,
              ['@type.definition'] = syn_type1,
               ['@type.qualifier'] = syn_type2, 
                 ['@type.builtin'] = syn_type2, 
                  ['@constructor'] = syn_type1,
                 ['@storageclass'] = syn_type2,
                 ['@storageclass.lifetime'] = syn_type2,

                    ['@namespace'] = syn_module1,
                    ['@module'] = nyi, -- N
                    ['@module.builtin'] = nyi, -- N

                  ['@punctuation'] = normal,
        ['@punctuation.delimiter'] = normal,
          ['@punctuation.bracket'] = hi('#780f81', nil, nil, nil),
          ['@punctuation.special'] = hi('#0e187f', nil, nil, nil),
                     ['@operator'] = hi('#0e187f', nil, nil, nil), -- operators expressed as symbols, e.g. + 

                      ['@keyword'] = syn_keyword1,
            ['@keyword.coroutine'] = syn_keyword4,
             ['@keyword.function'] = syn_keyword3,
             ['@keyword.operator'] = syn_keyword1, -- named operators, e.g. and
               ['@keyword.import'] = nyi, -- N
               ['@keyword.modifier'] = nyi, -- N
               ['@keyword.debug'] = nyi, -- N
               ['@keyword.directive'] = nyi, -- N
               ['@keyword.define'] = nyi, -- N
               ['@keyword.return'] = syn_keyword4,
                 ['@keyword.type'] = syn_keyword1,
               ['@keyword.repeat'] = syn_keyword1,
                       ['@repeat'] = syn_keyword1,
               ['@keyword.exception'] = nyi, -- N
                    ['@exception'] = syn_keyword1,
                          ['@asm'] = syn_keyword1,
                         ['@base'] = syn_keyword1,
                         ['@code'] = syn_keyword1,
               ['@keyword.phaser'] = syn_keyword1, -- Perl
                  ['@conditional'] = syn_keyword1,
                  ['@keyword.conditional'] = syn_keyword1,
  ['keyword.@conditional.ternary'] = syn_keyword1,
                        ['@label'] = hi(syn_keyword2.fg, syn_keyword2.bg, 'bold', nil),
     ['@define'] = nyi,

                     ['@function'] = syn_function1,
             ['@function.builtin'] = syn_function3,
                ['@function.call'] = syn_function1,
              ['@function.method'] = syn_function2,
              ['@function.method.call'] = syn_function2,
                       ['@method'] = syn_function2,
                ['@function.spec'] = syn_function2,
                  ['@method.call'] = syn_function2,
               ['@function.macro'] = syn_macro1,

                    ['@attribute'] = syn_metadata1,
            ['@attribute.builtin'] = syn_metadata1,

                      ['@comment'] = syn_comment,
        ['@comment.documentation'] = syn_comment,
        ['@comment.error'] = nyi, -- N
        ['@comment.warning'] = nyi, -- N
        ['@comment.todo'] = nyi, -- N
        ['@comment.note'] = nyi, -- N

                          ['@tag'] = syn_type1,
                  ['@tag.builtin'] = syn_type2,
                ['@tag.attribute'] = syn_variable1,
                ['@tag.delimiter'] = syn_punctuation,

               ['@text'] = nyi,
             ['@text.title'] = syn_text_title,
             ['@text.title.1'] = nyi,
             ['@text.title.2'] = nyi,
             ['@text.title.3'] = nyi,
             ['@text.title.4'] = nyi,
             ['@text.title.5'] = nyi,
             ['@text.title.6'] = nyi,
           ['@text.literal'] = syn_literal1,
           ['@text.literal.block'] = syn_literal1,
         ['@text.reference'] = hi(fg.syn_text_reference, nil, nil, nil),
               ['@text.uri'] = hi(fg.syn_text_uri, p.blue.ghost, nil, nil),
         ['@text.underline'] = hi(nil, nil, 'underline', nil),
              ['@text.todo'] = '@todo',
          ['@text.emphasis'] = hi(nil, nil, 'italic', nil),
            ['@text.strong'] = hi(nil, nil, 'bold', nil),
            ['@text.strike'] = hi(nil, nil, 'strikethrough', nil),
              ['@text.math'] = hi(nil, nil, 'italic', nil),
       ['@text.environment'] = hi(p.grey.dark1, p.grey.ghost, nil, nil),
              ['@text.note'] = hi(p.cyan.dark1, nil, nil, nil),
           ['@text.warning'] = inline_warn,
            ['@text.danger'] = inline_error,
             ['@text.quote'] = nyi,
             ['@text.environment.name'] = nyi,
             ['@text.diff.delete'] = nyi,
             ['@text.diff.add'] = nyi,


['@markup.strong'] = nyi, --          bold text
['@markup.italic'] = nyi, --          italic text
['@markup.strikethrough'] = nyi, --   struck-through text
['@markup.underline'] = nyi, --       underlined text (only for literal underline markup!)
['@markup.heading'] = nyi, --         headings, titles (including markers)
['@markup.heading.1'] = nyi, --       top-level heading
['@markup.heading.2'] = nyi, --       section heading
['@markup.heading.3'] = nyi, --       subsection heading
['@markup.heading.4'] = nyi, --       and so on
['@markup.heading.5'] = nyi, --       and so forth
['@markup.heading.6'] = nyi, --       six levels ought to be enough for anybody
['@markup.quote'] = nyi, --           block quotes
['@markup.math'] = nyi, --            math environments (e.g. $ ... $ in LaTeX)
['@markup.link'] = nyi, --            text references, footnotes, citations, etc.
['@markup.link.label'] = nyi, --      link, reference descriptions
['@markup.link.url'] = nyi, --        URL-style links
['@markup.raw'] = nyi, --             literal or verbatim text (e.g. inline code)
['@markup.raw.block'] = nyi, --       literal or verbatim text as a stand-alone block
['@markup.list'] = nyi, --            list markers
['@markup.list.checked'] = nyi, --    checked todo-style list markers
['@markup.list.unchecked'] = nyi, --
['@diff.plus'] = nyi, --              added text (for diff files)
['@diff.minus'] = nyi, --            deleted text (for diff files)
['@diff.delta'] = nyi, --            changed text (for diff files)

                  ['@spell'] = hi(nil, nil, nil, nil),
['@python'] = nyi,
['@preproc'] = nyi, --               various preprocessor directives & shebangs
['@func-name'] = nyi, --              
['@entry'] = nyi, --              
['@include'] = nyi, --              
['@injection.content'] = nyi, --              
['@injection.language'] = nyi, --              
['@none'] = nyi, --              
['@debug'] = nyi, --              
['@conceal'] = nyi, --              
['@scope'] = nyi, --              
['@reference'] = nyi, --  

['@definition'] = nyi,
['@definition.associated'] = nyi,
['@definition.constant'] = nyi,
['@definition.enum'] = nyi,
['@definition.field '] = nyi,
['@definition.function'] = nyi,
['@definition.import'] = nyi,
['@definition.label'] = nyi,
['@definition.macro'] = nyi,
['@definition.method'] = nyi,
['@definition.namespace'] = nyi,
['@definition.parameter'] = nyi,
['@definition.type'] = nyi,
['@definition.var'] = nyi,
['@definition.variable '] = nyi,
            
}

local scheme_group = {

-- ================== DAP =========================

                      DapSign = hi(p.orange.vibrant, p.grey.pale, nil, nil),
              DapRejectedSign = hi(p.red.vibrant, p.purple.pale, nil, nil),
               DapStoppedSign = hi(p.grey.black, p.orange.vibrant, nil, nil),

                DapUIVariable = '@variable', 
                   DapUIScope = hi(p.fg, nil, nil, nil),
                    DapUIType = '@type',
                   DapUIValue = hi(p.green.dark2, nil, nil, nil), 
           DapUIModifiedValue = hi(p.green.dark2, p.chartreuse.light, nil, nil), 
              DapUIDecoration = hi(p.grey.vibrant, nil, nil, nil), 
                  DapUIThread = hi(p.red.dark1, nil, nil, nil),
           DapUIStoppedThread = hi(p.orange.dark1, p.orange.pale, nil, nil),
               DapUIFrameName = hi(p.orange.dark1, nil, nil, nil),
                  DapUISource = hi(p.blue.dark1, p.blue.ghost, nil, nil),
              DapUILineNumber = 'LineNr', 
             DapUIFloatNormal = hi(nil, p.grey.ghost, nil, nil),
             DapUIFloatBorder = hi(p.grey.vibrant, p.grey.ghost, nil, nil),
            DapUIWatchesEmpty = hi(p.blue.pale, nil, nil, nil),
            DapUIWatchesValue = hi(p.red.dark1, nil, nil, nil),
            DapUIWatchesError = hi(p.yellow.light, p.red.vibrant, nil, nil),
         DapUIBreakpointsPath = 'DapUISource',
         DapUIBreakpointsInfo = hi(p.grey.dark1, p.grey.pale, nil, nil),
  DapUIBreakpointsCurrentLine = hi(p.blue.dark1, p.orange.light, nil, nil),
         DapUIBreakpointsLine = 'DapUILineNumber',
  DapUIBreakpointsDisableLine = hi(p.yellow.vibrant, nil, nil, nil),
        DapUICurrentFrameName = hi(p.orange.vibrant, nil, nil, nil),
                DapUIStepOver = hi(p.orange.vibrant, nil, nil, nil),
                DapUIStepInto = hi(p.orange.vibrant, nil, nil, nil),
                DapUIStepBack = hi(p.grey.light, nil, nil, nil),
                 DapUIStepOut = hi(p.orange.vibrant, nil, nil, nil),
                    DapUIStop = hi(p.red.vibrant, nil, nil, nil, nil),
               DapUIPlayPause = hi(p.green.vibrant, nil, nil, nil), 
                 DapUIRestart = hi(p.green.vibrant, nil, nil, nil),
             DapUIUnavailable = hi(p.grey.light, nil, nil, nil),

-- ================== VIM Syntax =========================

         Comment = syn_comment,

        Constant = hi(p.green.dark2, nil, nil, nil),
          String = literal_string,
       Character = literal_character,
          Number = literal_number,
         Boolean = literal_boolean,
           Float = literal_float,

      Identifier = hi(p.purple.dark2, nil, nil, nil),
        Function = hi(p.orange.dark1, nil, nil, nil),

       Statement = hi(p.fg, nil, nil, nil),
     Conditional = hi(p.blue.dark2, p.blue.ghost, nil, nil),
          Repeat = hi(p.blue.dark2, p.blue.ghost, nil, nil),
           Label = hi(p.blue.dark1, p.orange.ghost, 'bold', nil),
        Operator = hi(p.blue.dark1, nil, nil, nil),
         Keyword = hi(p.blue.dark2, p.blue.ghost, nil, nil),
       Exception = hi(p.blue.dark2, p.blue.ghost, nil, nil),

         PreProc = hi(p.red.dark1, p.red.ghost, nil, nil),
         Include = hi(p.red.dark1, p.red.ghost, nil, nil),
          Define = hi(p.red.dark1, p.red.ghost, nil, nil),
           Macro = hi(p.red.dark1, p.red.ghost, nil, nil),
       PreCondit = hi(p.red.dark1, p.red.ghost, nil, nil),

            Type = hi(p.cyan.dark1, nil, nil, nil),
    StorageClass = hi(p.cyan.dark1, nil, nil, nil),
       Structure = hi(p.cyan.dark1, nil, nil, nil),
         Typedef = hi(p.cyan.dark1, nil, nil, nil),

         Special = hi(p.blue.dark1, nil, nil, nil),
     SpecialChar = hi(p.green.dark1, nil, 'bold', nil),
   
       Delimiter = hi(p.fg, nil, nil, nil),
  SpecialComment = hi(p.orange.light, nil, 'bold', nil),
           Debug = hi(p.orange.dark1, nil, 'bold', nil),            -- Debugging statements

      Underlined = hi(nil, nil, 'underline', nil),

          Ignore = hi(nil, nil, nil, nil),

           Error = hi(p.red.vibrant, p.red.pale, 'bold,underline', nil),  -- any erroneous construct
            Todo = hi(p.orange.dark1, p.yellow.light, 'bold', nil),

    -- Treesitter  ===============================================================================

 --[[               ['@comment'] = hi(fg.syn_comment, nil, 'italic', nil), 
   XX 
             ['@text.title'] = hi(fg.syn_text_title, p.green.ghost),
           ['@text.literal'] = hi(fg.syn_text_literal, p.purple.ghost),
         ['@text.reference'] = hi(fg.syn_text_reference, nil, nil, nil),
               ['@text.uri'] = hi(fg.syn_text_uri, p.blue.ghost, nil, nil),
         ['@text.underline'] = hi(nil, nil, 'underline', nil),
              ['@text.todo'] = '@todo',
          ['@text.emphasis'] = hi(nil, p.orange.ghost, 'italic', nil),
            ['@text.strong'] = hi(nil, p.orange.light, 'bold', nil),
            ['@text.strike'] = hi(nil, nil, 'strikethrough', nil),
              ['@text.math'] = hi(nil, nil, 'italic', nil),
       ['@text.environment'] = hi(p.grey.dark1, p.grey.ghost, nil, nil),
              ['@text.note'] = hi(p.cyan.dark1, nil, nil, nil),
           ['@text.warning'] = 'WarningMsg',
            ['@text.danger'] = 'Error',
  
      
                   --]]
}

local function highlight(group, style)
  local fg = style.fg and 'guifg=' .. style.fg or 'guifg=NONE'
  local bg = style.bg and 'guibg=' .. style.bg or 'guibg=NONE'
  local st = style.special and 'gui=' .. style.special or 'gui=NONE'
  local sp = style.specialcol and 'guisp=' .. style.specialcol or ''

  vim.cmd('highlight ' .. group .. ' ' .. st .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end

local function link(from, to)
  vim.cmd('highlight link ' .. from .. ' ' .. to)
end

local M = {}

local function apply_set(set)
  for group, style in pairs(set) do
    if (type(style) == 'string') then
      link(group, style)
    else
      highlight(group, style)
    end
  end
end

M.colorscheme = function()
  vim.cmd('hi clear')
  if (vim.fn.exists('syntax_on')) then
    vim.cmd('syntax reset')
  end
  vim.o.background = 'light'
  vim.o.termguicolors = true
  apply_set(ui_group)
  apply_set(scheme_group)
  apply_set(diagnostic_group)
  apply_set(telescope_group)
  apply_set(lsp_group)
  apply_set(treesitter_group)
--  for group, style in pairs(scheme) do
 --   if (type(style) == 'string') then
  --    link(group, style)
 --   else
  --    highlight(group, style)
 --   end
 -- end
end


return M
