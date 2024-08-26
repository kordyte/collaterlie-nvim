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
diagerror = hi('#e31c1c', '#fddddd', nil, nil)
diagwarn = hi('#7f7f03', '#fefedc', nil, nil)
diaghint = hi('#780f81', '#f9defc', nil, nil)
diaginfo = hi('#117980', '#ddfafc', nil, nil)
diagok = hi('#0f801e', '#defbe1', nil, nil)
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

        SpellBad = hi(nil, diagerror.fg, 'undercurl', diagerror.fg),
        SpellCap = hi(nil, nil, 'undercurl', diagwarn.fg),
       SpellRare = hi(nil, nil, 'undercurl', diaghint.fg),
      SpellLocal = hi(nil, nil, 'undercurl', diaghint.fg),

       Directory = hi('#192ce2', nil, nil, nil),

         DiffAdd = diffaddsign,
      DiffDelete = diffdeletesign,
      DiffChange = diffchangesign,
        DiffText = diffchangetext,
}

local diagnostic_group = {
             DiagnosticError = diagerror,
              DiagnosticWarn = diagwarn,
              DiagnosticInfo = diaginfo,
              DiagnosticHint = diaghint,
                DiagnosticOk = diagok,

    DiagnosticUnderlineError = hi(nil, nil, 'undercurl', '#e31c1c'),
     DiagnosticUnderlineWarn = hi(nil, nil, 'undercurl', '#f1990e'),
     DiagnosticUnderlineInfo = hi(nil, nil, 'undercurl', '#1fe0ed'),
     DiagnosticUnderlineHint = hi(nil, nil, 'undercurl', '#d319e2'),
       DiagnosticUnderlineOk = hi(nil, nil, 'undercurl', '#19e233'),

  DiagnosticVirtualTextError = diagerror, 
   DiagnosticVirtualTextWarn = diagwarn,
   DiagnosticVirtualTextInfo = diaginfo,
   DiagnosticVirtualTextHint = diaghint,
     DiagnosticVirtualTextOk = diagok,
  
     DiagnosticFloatingError = diagerror,  -- Can be observed with :lua vim.diagnostic.open_float() (assuming you there are diagnostics)
      DiagnosticFloatingWarn = diagwarn,
      DiagnosticFloatingInfo = diaginfo,
      DiagnosticFloatingHint = diaghint,
        DiagnosticFloatingOk = diagok,
  
         DiagnosticSignError = diagerror, 
          DiagnosticSignWarn = diagwarn,
          DiagnosticSignInfo = diaginfo,
          DiagnosticSignHint = diaghint,
            DiagnosticSignOk = diagok,
}

local telescope_group = {
          TelescopeNormal = dialog,
          TelescopeBorder = dialogborder, 
       TelescopeSelection = selected,
  TelescopeSelectionCaret = hi(normal.fg, selected.bg, nil, nil),
  TelescopeMultiSelection = selected,
        TelescopeMatching = highlighted,
}



-- Treesitter Capture Groups: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
-- LSP Groups Semantic Tokens: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_semanticTokens
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

syn_literal_string = hi('#08440f', nil, nil, nil)
syn_literal_string_escape = hi('#0f801e', nil, 'bold', nil)
syn_literal_string_special = literal_string_escape
syn_literal_regex = hi('#0f801e', nil, nil, nil)
syn_literal_character = hi('#0f801e', nil, nil, nil)
syn_literal_character_special = hi('#0f801e', nil, 'bold', nil)
syn_literal_number = hi("#0f801e", nil, nil, nil)
syn_literal_boolean = hi("#0f801e", nil, nil, nil)
syn_literal_float = hi("#0f801e", nil, nil, nil)

syn_variable = hi('#410745', nil, nil, nil)
syn_variable_builtin = hi('#780f81', nil, nil, nil) 
syn_parameter = hi('#410745', '#fffaff', nil, nil)
syn_field = hi('#410745', nil, nil, nil)
syn_property = hi('#410745', nil, nil, nil)

syn_namespace = hi('#08440f', nil, nil, nil)

syn_punctuation = normal
syn_punctuation_delimiter = normal
syn_punctuation_bracket = hi('#780f81', nil, nil)
syn_punctuation_special = hi('#0e187f', nil, nil)
syn_operator = hi('#0e187f', nil, nil, nil)

syn_kw1 = hi('#070e44', '#fafaff', nil, nil)
syn_kw2 = hi('#0e187f', '#fffdfa', nil, nil)
syn_kw1_2 = hi(syn_kw1.fg, syn_kw2.bg, nil, nil)
syn_kw2_1 = hi(syn_kw2.fg, syn_kw1.bg, nil, nil)

syn_keyword = syn_kw1
syn_kw_conditional = syn_kw1 
syn_kw_repeat = syn_kw1
syn_kw_type = syn_kw1
syn_kw_label = hi(syn_kw2.fg, syn_kw2.bg, 'bold', nil)
syn_kw_debug = hi(syn_kw2.fg, syn_kw2.bg, 'bold', nil)
syn_kw_return = syn_kw2_1
syn_kw_function = syn_kw2_1
syn_kw_coroutine = syn_kw2_1
syn_kw_directive = syn_kw2
syn_kw_exception = syn_kw1
syn_kw_import = syn_kw1
syn_kw_modifier = syn_kw1_2


local lsp_group = {
      ['@lsp.type.namespace'] = syn_namespace,
           ['@lsp.type.type'] = nyi,
          ['@lsp.type.class'] = nyi,
           ['@lsp.type.enum'] = nyi,
      ['@lsp.type.interface'] = nyi,
         ['@lsp.type.struct'] = nyi,
  ['@lsp.type.typeParameter'] = nyi,
      ['@lsp.type.parameter'] = syn_parameter,
       ['@lsp.type.variable'] = syn_variable,
       ['@lsp.type.property'] = syn_property,
     ['@lsp.type.enumMember'] = nyi,
          ['@lsp.type.event'] = nyi,
       ['@lsp.type.function'] = nyi,
         ['@lsp.type.method'] = nyi,
          ['@lsp.type.macro'] = nyi,
        ['@lsp.type.keyword'] = syn_keyword,
       ['@lsp.type.modifier'] = nyi,
        ['@lsp.type.comment'] = nyi,
         ['@lsp.type.string'] = syn_literal_string,
         ['@lsp.type.number'] = syn_literal_number,
         ['@lsp.type.regexp'] = syn_literal_regex,
       ['@lsp.type.operator'] = syn_operator,
      ['@lsp.type.decorator'] = nyi,
}

local treesitter_group = {
                       ['@string'] = syn_literal_string,
                ['@string.escape'] = syn_literal_string_escape,
               ['@string.special'] = syn_literal_string_special,
                ['@string.regexp'] = syn_literal_regex,
                    ['@character'] = syn_literal_character,
            ['@character.special'] = syn_literal_character_special,
                      ['@boolean'] = syn_literal_boolean,
                       ['@number'] = syn_literal_number,
                 ['@number.float'] = syn_literal_float,
                        ['@float'] = syn_literal_float,

                     ['@variable'] = syn_variable,
             ['@variable.builtin'] = syn_variable_builtin,
           ['@variable.parameter'] = syn_parameter,
                    ['@parameter'] = syn_parameter,
          ['@parameter.reference'] = syn_parameter,
   ['@variable.parameter.builtin'] = syn_parameter,
            ['@parameter.builtin'] = syn_parameter,
              ['@variable.member'] = syn_field,
                       ['@member'] = syn_field,
               ['@variable.field'] = syn_field,
                        ['@field'] = syn_field,
                    
                    ['@namespace'] = syn_namespace,

                  ['@punctuation'] = syn_punctuation,
        ['@punctuation.delimiter'] = syn_punctuation_delimiter,
          ['@punctuation.bracket'] = syn_punctuation_bracket,
          ['@punctuation.special'] = syn_punctuation_special,
                     ['@operator'] = syn_operator,

                      ['@keyword'] = syn_keyword,
            ['@keyword.coroutine'] = syn_kw_coroutine,
             ['@keyword.function'] = syn_kw_function,
             ['@keyword.operator'] = syn_operator,
                     ['@operator'] = syn_operator,
               ['@keyword.import'] = syn_kw_import,
                 ['@keyword.type'] = syn_kw_type,
             ['@keyword.modifier'] = syn_kw_modifier,
               ['@keyword.repeat'] = syn_kw_repeat,
                       ['@repeat'] = syn_kw_repeat,
               ['@keyword.return'] = syn_kw_return,
                ['@keyword.debug'] = syn_kw_debug,
            ['@keyword.exception'] = syn_kw_exception,
                    ['@exception'] = syn_kw_exception,
          ['@keyword.conditional'] = syn_kw_conditional,
                  ['@conditional'] = syn_kw_conditional,
  ['@keyword.conditional.ternary'] = syn_kw_conditional,
            ['@keyword.directive'] = syn_kw_directive,
     ['@keyword.directive.define'] = syn_kw_directive,

                     ['@constant'] = nyi,
             ['@constant.builtin'] = nyi,
               ['@constant.macro'] = nyi,
                       ['@module'] = nyi,
               ['@module.builtin'] = nyi,
                        ['@label'] = nyi,

         ['@string.documentation'] = nyi,
        ['@string.special.symbol'] = nyi,
           ['@string.special.url'] = nyi,
          ['@string.special.path'] = nyi,



                         ['@type'] = nyi,
                 ['@type.builtin'] = nyi,
              ['@type.definition'] = nyi,
               ['@type.qualifier'] = nyi,
                 ['@storageclass'] = nyi,

                    ['@attribute'] = nyi,
            ['@attribute.builtin'] = nyi,
                     ['@property'] = nyi,

                     ['@function'] = nyi,
             ['@function.builtin'] = nyi,
                ['@function.call'] = nyi,
               ['@function.macro'] = nyi,

['@include'] = nyi,
['@define'] = nyi,
['@preproc'] = nyi,


              ['@function.method'] = nyi,
         ['@function.method.call'] = nyi,

                  ['@constructor'] = nyi,





                      ['@comment'] = nyi,
        ['@comment.documentation'] = nyi,

                ['@comment.error'] = nyi,
              ['@comment.warning'] = nyi,
                 ['@comment.todo'] = nyi,
                 ['@comment.note'] = nyi,
                 
                ['@markup.strong'] = nyi,
                ['@markup.italic'] = nyi,
         ['@markup.strikethrough'] = nyi,
             ['@markup.underline'] = nyi,
                 
               ['@markup.heading'] = nyi,
             ['@markup.heading.1'] = nyi,
             ['@markup.heading.2'] = nyi,
             ['@markup.heading.3'] = nyi,
             ['@markup.heading.4'] = nyi,
             ['@markup.heading.5'] = nyi,
             ['@markup.heading.6'] = nyi,
                 
                 ['@markup.quote'] = nyi,
                  ['@markup.math'] = nyi,
                 
                  ['@markup.link'] = nyi,
            ['@markup.link.label'] = nyi,
              ['@markup.link.url'] = nyi,
                 
                   ['@markup.raw'] = nyi,
             ['@markup.raw.block'] = nyi,
                 
                  ['@markup.list'] = nyi,
          ['@markup.list.checked'] = nyi,
        ['@markup.list.unchecked'] = nyi,
                 
                    ['@diff.plus'] = nyi,
                   ['@diff.minus'] = nyi,
                   ['@diff.delta'] = nyi,
                 
                          ['@tag'] = nyi,
                  ['@tag.builtin'] = nyi,
                ['@tag.attribute'] = nyi,
                ['@tag.delimiter'] = nyi,
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

         Comment = hi(p.orange.light, nil, 'italic', nil),

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
  
               ['@constant'] = hi(fg.syn_literal2, nil, nil, nil), 
       ['@constant.builtin'] = hi(fg.syn_literal1, nil, nil, nil),
                 ['@string'] = hi(fg.syn_literal2, nil, nil, nil),
          ['@string.escape'] = hi(fg.syn_literal1, nil, "bold", nil),
         ['@string.special'] = hi(fg.syn_literal1, nil, "bold", nil),
              ['@character'] = hi(fg.syn_literal1, nil, nil, nil),
      ['@character.special'] = hi(fg.syn_literal1, nil, "bold", nil),
                 ['@number'] = hi(fg.syn_literal1, nil, nil, nil),
                ['@boolean'] = hi(fg.syn_literal1, nil, nil, nil),
                  ['@float'] = hi(fg.syn_literal1, nil, nil, nil), 

                 ['@method'] = hi(fg.syn_function1, nil, nil, nil),
            ['@method.call'] = hi(fg.syn_function1, nil, nil, nil),
               ['@function'] = hi(fg.syn_function1, nil, nil, nil),
          ['@function.call'] = hi(fg.syn_function1, nil, nil, nil),
       ['@function.builtin'] = hi(fg.syn_function2, nil, nil, nil),


               ['@variable'] = hi(fg.syn_variable1, nil, nil, nil),
       ['@variable.builtin'] = hi(fg.syn_variable2, nil, nil, nil), 
              ['@parameter'] = hi(fg.syn_variable1, bg.syn_variable, nil, nil),

    ['@parameter.reference'] = hi(fg.syn_variable1, bg.syn_variable, nil, nil), 
                  ['@field'] = hi(fg.syn_variable1, nil, nil, nil),
               ['@property'] = hi(fg.syn_variable1, nil, nil, nil),

                   ['@type'] = hi(fg.syn_type1, nil, nil, nil),
        ['@type.definition'] = hi(fg.syn_type1, nil, nil, nil),
         ['@type.qualifier'] = hi(fg.syn_type1, nil, nil, nil),
           ['@type.builtin'] = hi(fg.syn_type2, nil, nil, nil), 
           ['@storageclass'] = hi(fg.syn_type1, nil, nil, nil),
              ['@structure'] = hi(fg.syn_type1, nil, nil, nil),
            ['@constructor'] = hi(fg.syn_type1, nil, nil, nil),

                ['@include'] = hi(fg.syn_preproc1, bg.syn_preproc, nil, nil),
                ['@preproc'] = hi(fg.syn_preproc1, bg.syn_preproc, nil, nil),
                 ['@define'] = hi(fg.syn_preproc1, bg.syn_preproc, nil, nil),
         ['@constant.macro'] = hi(fg.syn_preproc1, nil, nil, nil),
         ['@function.macro'] = hi(fg.syn_preproc1, nil, nil, nil),
                  ['@macro'] = hi(fg.syn_preproc1, nil, nil, nil),

             ['@annotation'] = hi(fg.syn_metadata, bg.syn_metadata, 'bold', nil),
              ['@attribute'] = hi(fg.syn_metadata, bg.syn_metadata, 'bold', nil),
      
                   ['@todo'] =  hi(fg.syn_todo, bg.syn_todo, 'bold', nil),
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
