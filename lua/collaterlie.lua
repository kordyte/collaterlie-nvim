-- ====================================================================================
--
-- Collaterlie Colour Scheme for Neovim
--
-- ====================================================================================

local function hi(fg, bg, special, specialcol)
  local o = { fg = fg, bg = bg, special = special, specialcol = specialcol }

  return o
end

local common = {
  -- This is not a set of highlight groups. It is a 'palette' used by the real 
  -- highlight groups so that highlight elements can be reused. These are specific
  -- to this colorscheme and do not map 1-1 with the highlight groups in neovim.
  -- The actual highight groups appear later in this file

              nyi = hi('#000000', '#ff2233', 'bold,undercurl', '#00ff00'),
              -- Not Yet Implemented, a highlight for use when developing colorschemes. If you
              -- want to confirm which text is highlighted for a given group name, then set
              -- it to this. It's not pretty but it will be obvious.. 

           normal = hi('#432b04', '#fefefd', nil, nil),
           -- Default text in the edit area

           gutter = hi('#432b04', '#f9f8f5', nil, nil),
            -- numbering, and others, along the edge of the active edit area
            -- Also used for an inactive edit area

         external = hi('#801010', '#f7f3ee', nil, nil),
         -- Outside the edit area, e.g. TabLine, EndOfBuffer
  
  status_inactive = hi('#432b04', '#f0e2d8', nil, nil),

           status = hi('#fdfdfc', '#7f5107', nil, nil),
           -- Irrelevant if using something like lualine

  -- normal, gutter, external, and statuses are chosen to work together.
  -- gutter is a slight change from normal
  -- external is slight change further away 'in the same direction'
  -- status_inactive is slightly further again.
  -- status is chosen to be complementary but can stand out
  -- Looking at DAP UI makes all of these available in one window

           dialog = hi('#432b04', '#fbf9e8', nil, nil),
           -- Any kind of popup: Telescope, LSPInfo, WildMenu, etc
    dialog_border = hi('#7f5107', '#fbf9e8', nil, nil),
  
         selected = hi('#484848', '#fefe50', nil, nil),
          -- Things that have been deliberately chosen, contrasts to highlight
  
      highlighted = hi('#484848', '#cbff97', nil, nil),
      -- Something that we want to draw attention to, e.g. search results, changed variables in debug
  
      alert_error = hi('#e31c1c', '#fddddd', nil, nil),
       alert_warn = hi('#7f7f03', '#fefedc', nil, nil),
       alert_hint = hi('#780f81', '#f9defc', nil, nil),
       alert_info = hi('#117980', '#ddfafc', nil, nil),
         alert_ok = hi('#0f801e', '#defbe1', nil, nil),
         -- Signs and diagnostic virtual text, or other things that are not 'inline' text
   
     inline_error = hi('#e31c1c', nil, 'bold', nil),
      inline_warn = hi('#7f7f03', nil, 'bold', nil),
      inline_hint = hi('#780f81', nil, 'bold', nil),
      inline_info = hi('#117980', nil, 'bold', nil),
        inline_ok = hi('#0f801e', nil, nil, nil),
        -- Errors that are rendered within a block of text, unlike the alert
   
         alert_add = hi('#0f801e', '#defbe1', nil, nil),
      alert_delete = hi('#801010', '#fddddd', nil, nil),
      alert_change = hi('#780f81', '#f9defc', nil, nil),
      -- Change formatting for markers, not for inline text
   
        inline_add = hi(nil, '#a2f5ad', nil, nil),
     inline_delete = hi(nil, '#f4a3a3', nil, nil),
     inline_change = hi(nil, '#f9defc', 'undercurl', '#780f81')
     -- Change formatting for use inline
}

local syntax = {
  -- These are not the actual highlight gtoups. Instead this is a palette that
  -- can be used to create the highlight groups. thing1 and thing2 should be 
  -- different but close colours. thing1 and thing1x and thing1y should be the
  -- same colour but different text styling, e.g. bold, underline, etc.
             -- Greens
             literal1 = hi('#0f801e', nil, nil, nil),
            literal1x = hi('#0f801e', nil, 'bold', nil), 
             literal2 = hi('#08440f', nil, nil, nil),
            literal2x = hi('#08440f', nil, 'bold', nil),
             literal3 = hi('#619220', nil, nil, nil), 
            literal3x = hi('#619220', nil, 'italic', nil), 

            -- Purples
            variable1 = hi('#410745', nil, nil, nil), 
           variable1x = hi('#410745', nil, 'italic', nil), 
            variable2 = hi('#780f81', nil, nil, nil),
            variable3 = hi('#3e0a66', nil, nil, nil),

                -- Teals
                type1 = hi('#117980', nil, nil, nil),
               type1x = hi('#117980', nil, 'italic', nil),
                type2 = hi('#093e43', nil, nil, nil),
               type2x = hi('#093e43', nil, 'italic', nil),
                type3 = hi('#085e5a', nil, nil, nil),
               type3x = hi('#085e5a', nil, 'italic', nil),

           -- Olive 
           namespace1 = hi('#616520', nil, nil, nil),

             -- Dark blues
             keyword1 = hi('#070e44', nil, nil, nil),
            keyword1x = hi('#070e44', nil, 'bold', nil),
            keyword1y = hi('#070e44', nil, 'italic', nil),
             keyword2 = hi('#0e187f', nil, nil, nil),
            keyword2x = hi('#0e187f', nil, 'bold', nil),
             keyword3 = hi('#1620b1', nil, nil, nil),
            keyword3x = hi('#1620b1', nil, 'bold', nil),

            -- Browns
            function1 = hi('#432b04', nil, nil, nil),
           function1x = hi('#432b04', nil, 'bold', nil),
            function2 = hi('#583e04', nil, nil, nil),
           function2x = hi('#583e04', nil, 'bold', nil),
            function3 = hi('#7f5107', nil, nil, nil),
           function3x = hi('#7f5107', nil, 'bold', nil),

             -- Reds
             preproc1 = hi('#801010', nil, nil, nil),
             preproc2 = hi('#9a3713', nil, nil, nil),

            -- Greys
            metadata1 = hi('#909090', nil, nil, nil),
           metadata1x = hi('#909090', '#fffafa', 'bold', nil),

              -- Oranges
              comment = hi('#e9c865', nil, 'italic', nil),
      comment_special = hi('#7f5107', '#fcfb9d', 'bold,italic', nil),

          punctuation = hi(common.normal.fg, nil, nil, nil),
  punctuation_special = hi('#0e187f', nil, nil, nil),
             operator = hi(common.normal.fg, nil, nil, nil),
            delimiter = hi(common.normal.fg, nil, nil, nil),
              bracket = hi('#780f81', nil, nil, nil),

           deprecated = hi(nil, nil, 'strikethrough', nil),

                 path = hi('#192ce2', nil, nil, nil),
                  uri = hi('#192ce2', nil, 'underline', '#a1a9f5'),
 
           text_title = hi('#101010', nil, 'underline', '#101010'),
          text_title1 = hi('#101010', nil, 'bold,underline', '#101010'),
          text_title2 = hi('#101010', nil, 'bold,underline', '#303030'),
          text_title3 = hi('#202020', nil, 'bold,underline', '#404040'),
          text_title4 = hi('#202020', nil, 'underline', '#404040'),
          text_title5 = hi('#303030', nil, 'underline', '#606060'),
          text_title5 = hi('#404040', nil, 'underline', '#808080'),
          text_strong = hi(nil, nil, 'bold', nil),
          text_italic = hi(nil, nil, 'italic', nil),
   text_strikethrough = hi(nil, nil, 'strikethrough', nil),
       text_underline = hi(nil, nil, 'underline', nil),
            text_link = hi('#192ce2', nil, nil, nil),
             text_raw = hi('#ededed', nil, nil, nil),
}

local terminal_colours = {
  -- These are used to set the g:terminal_color_X variables.
  '#000000',  -- Black
  '#e31c1c',  -- Red
  '#19e233',  -- Green
  '#f0f005',  -- Yellow
  '#192ce2',  -- Blue
  '#d319e2',  -- Magenta
  '#1fe0ed',  -- Cyan (bright)
  '#fdfdfc',  -- White
  '#444444',  -- Black (bright)
  '#ff1c1f',  -- Red (bright)
  '#19ff33',  -- Green (bright)
  '#ffff05',  -- Yellow (bright)
  '#192cff',  -- Blue (bright)
  '#e319f0',  -- Magenta (bright)
  '#1ff0fd',  -- Cyan (bright)
  '#ffffff'   -- White (bright)
}


-- ======================================================================================
--
-- Highlight Groups
--
-- These will be realised by the apply_group function which is defined later in the file.
--
-- ======================================================================================

-- For help with the highlight groups, see: https://github.com/casr/vim-colors-reference

local ui_group = {
          Normal = common.normal, 
        NormalNC = common.gutter,  
         -- Normal text in non-current windows, will be used as the background when a dialog is shown

          Cursor = hi('#000000', '#f1990e', nil, nil), -- for the cursor highlights to work, 
         nCursor = hi('#000000', '#f1990e', nil, nil), -- the highlight group will need to be set for
         vCursor = hi('#000000', '#fefe50', nil, nil), -- the cursor, e.g.
         iCursor = hi('#000000', '#192ce2', nil, nil), -- set guicursor=n:block-nCursor
         rCursor = hi('#fddddd', '#e31c1c', nil, nil), -- Needs support from the terminal, nvim-qt qorks
         cCursor = hi('#000000', '#d319e2', nil, nil),

        CursorIM = hi(nil, nil, 'bold', nil),      -- for IME mode (inputing multibyte characters)
    CursorColumn = hi(nil, '#fef8e8', nil, nil),   -- for when cursorcolumn is set
      CursorLine = hi(nil, '#fef8e8', nil, nil),     -- for when cursorline is set

          LineNr = hi(common.normal.fg, common.gutter.bg, 'italic', nil),
    CursorLineNr = hi('#111111', '#fee8b8', 'bold,italic', nil),
      SignColumn = hi(nil, common.gutter.bg, nil, nil),
  CursorLineSign = hi(nil, '#fee8b8', nil, nil), 

      StatusLine = common.status, 
    StatusLineNC = common.status_inactive,

         MsgArea = common.gutter,

    QuickFixLine = hi(nil, '#fddddd', nil, nil),
    
    WinSeparator = hi('#7f5107', '#f9f9f5', nil, nil),
       VertSplit = 'WinSeparator',
          
         -- WinBar = hi(nil, common.gutter.bg, nil, nil),
          WinBar = hi(nil, '#ff0000', nil, nil),
        WinBarNC = hi(nil, nil, nil, nil),

         Tabline = hi(common.external.fg, common.external.bg, 'italic', nil),
     TabLineFill = common.external,
      TabLineSel = hi(common.external.fg, nil, 'bold,italic', nil),
           Title = hi(common.external.fg, nil, nil, nil),
           -- number in a tab with more than one window

      MatchParen = hi(nil, common.highlighted.bg, nil, nil),

     EndOfBuffer = common.external,    
     -- Bottom of screen when scrolled up
         NonText = hi('#f4a3a3', nil, nil, nil), 
      Whitespace = hi('#070e44', nil, nil, nil),
      SpecialKey = hi('#0f801e', nil, nil, nil), 

          Visual = hi(nil, '#fef8d0', nil, nil),
       VisualNOS = hi(nil, '#ededed', nil, nil),  
       -- for when window does not have focus (X11 only)
        VisualNC = hi(nil, '#ededed', nil, nil),  
        -- for when window does not have focus (X11 only)

         Conceal = hi('#818181', nil, nil, nil), 

          Folded = hi('#0f801e', '#fefedc', nil, nil),
      FoldColumn = hi('#0f801e', '#fefedc', 'bold', nil),

          Search = common.highlighted,
       CurSearch = hi(common.highlighted.fg, common.highlighted.bg, 'bold', nil),
       IncSearch = hi(common.highlighted.fg, common.highlighted.bg, 'bold', nil),

           Pmenu = common.dialog, 
        PmenuSel = common.selected,
    PmenuSelBold = hi(common.selected.fg, common.selected.bg, 'bold', nil),
      PmenuThumb = hi(nil, '#f0e0a0', nil, nil), 
      -- Only observed this in completion dialogs
       PmenuSbar = hi(nil, '#f8f0d8', nil, nil),

     NormalFloat = common.dialog,
      FloatTitle = hi(common.normal.fg, nil, 'bold' ,nil),
     FloatBorder = common.dialog_border,
     FloatShadow = hi(nil, common.dialog_border.fg, nil, nil), 
     -- background is blended to form the shadow
        WildMenu = common.dialog,

        ErrorMsg = hi('#fefedc', '#e31c1c', 'bold', nil),   
        -- error messages displayed on the command line
      WarningMsg = hi('#7f5107', '#f4a3a3', nil, nil),
         MoreMsg = hi('#000000', '#fddddd', nil, nil),
        Question = 'MoreMsg',
         ModeMsg = hi('#202020', '#f8d59e', nil, nil),
    MsgSeparator = common.external,

        SpellBad = hi(nil, common.alert_error.fg, 'undercurl', common.alert_error.fg),
        SpellCap = hi(nil, nil, 'undercurl', common.alert_warn.fg),
       SpellRare = hi(nil, nil, 'undercurl', common.alert_hint.fg),
      SpellLocal = hi(nil, nil, 'undercurl', common.alert_hint.fg),

       Directory = hi('#192ce2', nil, nil, nil),

         DiffAdd = common.alert_add,
      DiffDelete = common.alert_delete,
      DiffChange = common.alert_change,
        DiffText = common.inline_change,
}

local diagnostic_group = {
             DiagnosticError = common.alert_error,
              DiagnosticWarn = common.alert_warn,
              DiagnosticInfo = common.alert_info,
              DiagnosticHint = common.alert_hint,
                DiagnosticOk = common.alert_ok,

    DiagnosticUnderlineError = hi(nil, nil, 'undercurl', '#e31c1c'),
     DiagnosticUnderlineWarn = hi(nil, nil, 'undercurl', '#f1990e'),
     DiagnosticUnderlineInfo = hi(nil, nil, 'undercurl', '#1fe0ed'),
     DiagnosticUnderlineHint = hi(nil, nil, 'undercurl', '#d319e2'),
       DiagnosticUnderlineOk = hi(nil, nil, 'undercurl', '#19e233'),

  DiagnosticVirtualTextError = common.alert_error, 
   DiagnosticVirtualTextWarn = common.alert_warn,
   DiagnosticVirtualTextInfo = common.alert_info,
   DiagnosticVirtualTextHint = common.alert_hint,
     DiagnosticVirtualTextOk = common.alert_ok,
  
     DiagnosticFloatingError = common.inline_error,  
     -- Can be observed with :lua vim.diagnostic.open_float() (assuming there are diagnostics)
      DiagnosticFloatingWarn = common.inline_warn,
      DiagnosticFloatingInfo = common.inline_info,
      DiagnosticFloatingHint = common.inline_hint,
        DiagnosticFloatingOk = common.inline_ok,
  
         DiagnosticSignError = common.alert_error, 
          DiagnosticSignWarn = common.alert_warn,
          DiagnosticSignInfo = common.alert_info,
          DiagnosticSignHint = common.alert_hint,
            DiagnosticSignOk = common.alert_ok,
}

local telescope_group = {
          TelescopeNormal = common.dialog,
          TelescopeBorder = common.dialog_border, 
       TelescopeSelection = common.selected,
  TelescopeSelectionCaret = hi(common.normal.fg, common.selected.bg, nil, nil),
  TelescopeMultiSelection = common.selected,
        TelescopeMatching = common.highlighted,
}



-- Treesitter Capture Groups: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
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

local syntax_group = {
  -- Vim syntax capture groups
         Comment = syntax.comment,

        Constant = syntax.literal1,
          String = syntax.literal2,
       Character = syntax.literal1,
          Number = syntax.literal1,
         Boolean = syntax.literal1,
           Float = syntax.literal1,

      Identifier = syntax.variable1,
        Function = syntax.function1,

       Statement = common.normal,
     Conditional = syntax.keyword2, 
          Repeat = syntax.keyword2,
           Label = syntax.keyword2x,
        Operator = syntax.operator,
         Keyword = syntax.keyword1,
       Exception = syntax.keyword2, 

         PreProc = syntax.preproc1,
         Include = syntax.preproc1,
          Define = syntax.preproc1,
           Macro = syntax.preproc2,
       PreCondit = syntax.preproc1, 

            Type = syntax.type1,
    StorageClass = syntax.type3x,
       Structure = syntax.type1,
         Typedef = syntax.type1,

         Special = syntax.literal2x,
     SpecialChar = syntax.literal1x,
   
       Delimiter = syntax.delimiter,
  SpecialComment = syntax.comment,
           Debug = hi('#7f5107', nil, 'bold', nil),

      Underlined = syntax.text_underline,

          Ignore = hi(nil, nil, nil, nil),

           Error = common.inline_error,
            Todo = syntax.comment_special
}

local lsp_syntax_group = {
         ['@lsp.type.number'] = syntax.literal1,
         ['@lsp.type.string'] = syntax.literal2,
     ['@lsp.type.enumMember'] = syntax.literal3,
         ['@lsp.type.regexp'] = syntax.literal3x,
      ['@lsp.type.namespace'] = syntax.namespace1,
           ['@lsp.type.type'] = syntax.type1, 
          ['@lsp.type.class'] = syntax.type1,
           ['@lsp.type.enum'] = syntax.type1,
         ['@lsp.type.struct'] = syntax.type1,
          ['@lsp.type.event'] = syntax.type1,
      ['@lsp.type.interface'] = syntax.type1x,
  ['@lsp.type.typeParameter'] = syntax.type2x,
       ['@lsp.type.modifier'] = syntax.type3x,
       ['@lsp.type.variable'] = syntax.variable1,
       ['@lsp.type.property'] = syntax.variable2,
      ['@lsp.type.parameter'] = syntax.variable3,
       ['@lsp.type.function'] = syntax.function1,
         ['@lsp.type.method'] = syntax.function2,
          ['@lsp.type.macro'] = syntax.preproc1,
        ['@lsp.type.keyword'] = syntax.keyword1,
        ['@lsp.type.comment'] = syntax.comment,
       ['@lsp.type.operator'] = syntax.operator,
      ['@lsp.type.decorator'] = syntax.metadata1,

       ['@lsp.mod.deprecated'] = syntax.deprecated,
}

local treesitter_syntax_group = {
                ['@boolean'] = syntax.literal1,
                 ['@number'] = syntax.literal1,
         ['@number.builtin'] = syntax.literal3,
         ['@number.special'] = syntax.literal3,
                  ['@float'] = syntax.literal1,
                 ['@string'] = syntax.literal2,
          ['@string.escape'] = syntax.literal1x,
   ['@string.documentation'] = syntax.literal3,
         ['@string.special'] = syntax.literal3,
          ['@string.regexp'] = syntax.literal3x,
  ['@string.special.symbol'] = syntax.literal3x, -- Atoms and symbols 
                 ['@symbol'] = syntax.literal3x, -- Atoms and symbols
    ['@string.special.path'] = syntax.path,
     ['@string.special.url'] = syntax.uri,

              ['@character'] = syntax.literal1,
      ['@character.special'] = syntax.literal1x,

               ['@variable'] = syntax.variable1,
     ['@variable.parameter'] = syntax.variable2,
              ['@parameter'] = syntax.variable2,
       ['@variable.builtin'] = syntax.variable1x,
        ['@variable.member'] = syntax.variable3,
                  ['@field'] = syntax.variable3,
               ['@property'] = syntax.variable3,
                  ['@entry'] = syntax.variable3,              
         ['@variable.local'] = syntax.variable1, 
        ['@variable.scalar'] = syntax.variable1, -- Perl
         ['@variable.array'] = syntax.variable2, -- Perl
          ['@variable.hash'] = syntax.variable3, -- Perl

               ['@constant'] = syntax.literal1,
       ['@constant.builtin'] = syntax.literal2,
         ['@constant.macro'] = syntax.preproc2,

                   ['@type'] = syntax.type1,
        ['@type.definition'] = syntax.type1,
            ['@constructor'] = syntax.type1,
           ['@type.builtin'] = syntax.type2, 
         ['@type.qualifier'] = syntax.type3x, 
           ['@storageclass'] = syntax.type3x,
  ['@storageclass.lifetime'] = syntax.type3x,
       
              ['@namespace'] = syntax.namespace1,

               ['@operator'] = syntax.operator, 
            ['@punctuation'] = syntax.punctuation,
  ['@punctuation.delimiter'] = syntax.delimiter,
    ['@punctuation.bracket'] = syntax.bracket,
    ['@punctuation.special'] = syntax.punctuation_special,

                ['@keyword'] = syntax.keyword1,
       ['@keyword.operator'] = syntax.keyword1, -- named operators, e.g. and
         ['@keyword.phaser'] = syntax.keyword1, -- Perl
                   ['@base'] = syntax.keyword1,
                   ['@code'] = syntax.keyword1,
           ['@keyword.type'] = syntax.keyword1,
         ['@keyword.repeat'] = syntax.keyword2,
                 ['@repeat'] = syntax.keyword2,
            ['@conditional'] = syntax.keyword2,
    ['@conditional.ternary'] = syntax.keyword2,
              ['@exception'] = syntax.keyword2,
                  ['@label'] = syntax.keyword2x,

               ['@function'] = syntax.function1,
          ['@function.call'] = syntax.function1,
        ['@function.method'] = syntax.function2,
   ['@function.method.call'] = syntax.function2,
                 ['@method'] = syntax.function2,
            ['@method.call'] = syntax.function2,
          ['@function.spec'] = syntax.function2,
              ['@func-name'] = syntax.function2,              
       ['@function.builtin'] = syntax.function3,
         ['@function.macro'] = syntax.preproc2,

                ['@preproc'] = syntax.preproc1, 
                 ['@define'] = syntax.preproc1, 
                ['@include'] = syntax.preproc1,              

              ['@attribute'] = syntax.metadata1x,
      ['@attribute.builtin'] = syntax.metadata1x,

                ['@comment'] = syntax.comment,
  ['@comment.documentation'] = syntax.comment,
          ['@comment.error'] = common.inline_error,
        ['@comment.warning'] = common.inline_warn,
           ['@comment.todo'] = syntax.comment_special, 
           ['@comment.note'] = syntax.comment,

                    ['@tag'] = syntax.type1,
            ['@tag.builtin'] = syntax.type2,
          ['@tag.attribute'] = syntax.variable1,
          ['@tag.delimiter'] = syntax.punctuation,

              ['@diff.plus'] = common.inline_add,
             ['@diff.minus'] = common.inline_delete,
             ['@diff.delta'] = common.inline_change,

                   ['@text'] = hi(nil, nil, nil, nil), 
             ['@text.title'] = syntax.text_title,
           ['@text.title.1'] = syntax.text_title1,
           ['@text.title.2'] = syntax.text_title2,
           ['@text.title.3'] = syntax.text_title3,
           ['@text.title.4'] = syntax.text_title4,
           ['@text.title.5'] = syntax.text_title5,
           ['@text.title.6'] = syntax.text_title6,
           ['@text.literal'] = syntax.literal1,
     ['@text.literal.block'] = syntax.literal2,
         ['@text.reference'] = syntax.text_link,
               ['@text.uri'] = syntax.uri,
         ['@text.underline'] = syntax.text_underline,
              ['@text.todo'] = syntax.comment_special,
          ['@text.emphasis'] = syntax.text_italic,
            ['@text.strong'] = syntax.text_strong,
            ['@text.strike'] = syntax.text_strikethrough,
              ['@text.math'] = syntax.text_italic,
       ['@text.environment'] = syntax.text,
  ['@text.environment.name'] = syntax.text,
              ['@text.note'] = syntax.comment_special,
           ['@text.warning'] = common.inline_warn,
            ['@text.danger'] = common.inline_error,
             ['@text.quote'] = syntax.text_italic,
       ['@text.diff.delete'] = common.inline_delete,
          ['@text.diff.add'] = common.inline_add,


         ['@markup.heading'] = syntax.text, 
       ['@markup.heading.1'] = syntax.text_title1, 
       ['@markup.heading.2'] = syntax.text_title2,
       ['@markup.heading.3'] = syntax.text_title3,
       ['@markup.heading.4'] = syntax.text_title4,
       ['@markup.heading.5'] = syntax.text_title5,
       ['@markup.heading.6'] = syntax.text_title6,
          ['@markup.strong'] = syntax.text_strong,
          ['@markup.italic'] = syntax.text_italic,
   ['@markup.strikethrough'] = syntax.text_strikethrough,
       ['@markup.underline'] = syntax.text_underline,
            ['@markup.math'] = syntax.text_italic,
           ['@markup.quote'] = syntax.text_italic,
            ['@markup.link'] = syntax.text_link,
      ['@markup.link.label'] = syntax.text_link,
        ['@markup.link.url'] = syntax.uri,
             ['@markup.raw'] = syntax.text_raw,
       ['@markup.raw.block'] = syntax.text_raw,
            ['@markup.list'] = syntax.text_bold,
    ['@markup.list.checked'] = syntax.text_bold,
  ['@markup.list.unchecked'] = syntax.text_bold,

                -- ['@none']
               -- ['@debug']
             -- ['@conceal']
}

local dap_group = {
                      DapSign = hi('#f1990e', common.gutter.bg, nil, nil),
              DapRejectedSign = hi('#efa4f6', common.gutter.bg, nil, nil),
               DapStoppedSign = hi('#f1990e', '#fcfb9d', nil, nil),
                   
                   DapUIScope = common.gutter,
              DapUIDecoration = common.normal, 

                DapUIVariable = syntax.variable1, 
                    DapUIType = syntax.type1,
                   DapUIValue = syntax.literal1, 
           DapUIModifiedValue = hi(syntax.literal1.fg, common.highlighted.bg, nil, nil), 
                  DapUIThread = syntax.function1,
           DapUIStoppedThread = syntax.function1x,
               DapUIFrameName = syntax.function2, 
        DapUICurrentFrameName = syntax.function3x,
                  DapUISource = syntax.path,
              DapUILineNumber = 'LineNr', 
             DapUIFloatNormal = common.dialog,
             DapUIFloatBorder = common.dialog_border,
            DapUIWatchesEmpty = syntax.keyword1y,
            DapUIWatchesValue = common.normal,
            DapUIWatchesError = common.alert_error,
         DapUIBreakpointsPath = syntax.path,
         DapUIBreakpointsInfo = syntax.keyword1y,
  DapUIBreakpointsCurrentLine = common.selected,
         DapUIBreakpointsLine = 'DapUILineNumber',
  DapUIBreakpointsDisableLine = hi('#fcfb9d', nil, nil, nil),
                DapUIStepOver = hi('#f1990e', nil, nil, nil),
                DapUIStepInto = hi('#f1990e', nil, nil, nil),
                DapUIStepBack = hi('#d319e2', nil, nil, nil),
                 DapUIStepOut = hi('#f1990e', nil, nil, nil),
                    DapUIStop = hi('#e31c1c', nil, nil, nil, nil),
               DapUIPlayPause = hi('#19e233', nil, nil, nil), 
                 DapUIRestart = hi('#19e233', nil, nil, nil),
             DapUIUnavailable = hi('#cdcdcd', nil, nil, nil),
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

local function apply_group(set)
  for group, style in pairs(set) do
    if (type(style) == 'string') then
      link(group, style)
    else
      highlight(group, style)
    end
  end
end

local function apply_terminal_colours(tcols)
  for i=1,16 do
    vim.cmd('let ' .. 'terminal_color_' .. (i - 1) .. ' = \'' .. tcols[i] .. '\'')
  end
end

M.colorscheme = function()
  vim.cmd('hi clear')
  if (vim.fn.exists('syntax_on')) then
    vim.cmd('syntax reset')
  end
  vim.o.background = 'light'
  vim.o.termguicolors = true
  apply_group(ui_group)
  apply_group(diagnostic_group)
  apply_group(telescope_group)
  apply_group(syntax_group)
  apply_group(lsp_syntax_group)
  apply_group(treesitter_syntax_group)
  apply_group(dap_group)

  apply_terminal_colours(terminal_colours)

  vim.g.colors_name = 'collaterlie'
end


return M
