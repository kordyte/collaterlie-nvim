local p = require('collaterlie_palette')

local function hi(fg, bg, special, specialcol)
  local o = { fg = fg, bg = bg, special = special, specialcol = specialcol }

  return o
end

local fg = {
  normal = '#432b04',
  highlight = '#484848',
  dialogborder = '#7f5107',
  selected = '#484848',
  menu = '#532b14',
  addition = '#0f801e',
  deletion = '#801010',
  change = '#7f7f03',
  diff = '#780f81'
}

local bg = {
  normal = '#fdfdfc',
  highlight = '#cbff97',
  cursorline = '#dee1fa',
  gutter = '#ededed',
  dialog = '#fffaf6',
  menu = '#ededed',
  selected = '#edffdb',
  addition = '#defbe1',
  deletion = '#fddddd',
  change = '#fefedc',
  diff = '#f9defc'
}

local scheme = {
          Normal = hi(fg.normal, bg.normal, nil, nil), 
        NormalNC = hi(fg.normal, bg.normal, nil, nil),   -- Normal text in non-current windows, will be used as the bckground when a dialog is shown

          Cursor = hi('#000000', '#f1990e', nil, nil), -- for the cursor highlights to work, 
         nCursor = hi('#000000', '#f1990e', nil, nil), -- the highlight group will need to be set for
         vCursor = hi('#000000', '#7f5107', nil, nil),   -- the cursor, e.g.
         iCursor = hi('#000000', '#192ce2', nil, nil),   -- set guicursor=n:block-nCursor
         rCursor = hi('#fddddd', '#e31c1c', nil, nil), 
         cCursor = hi('#000000', '#d319e2', nil, nil),

        CursorIM = hi(nil, nil, 'bold', nil),      -- for IME mode (inputing multibyte characters)
    CursorColumn = hi(nil, bg.cursorline, nil, nil),   -- for when cursorcolumn is set
      CursorLine = hi(nil, bg.cursorline, nil, nil),     -- for when cursorline is set

          LineNr = hi('#0e187f', bg.gutter, 'italic', nil),
    CursorLineNr = hi('#070e44', bg.cursorline, 'bold,italic', nil),
      SignColumn = hi(fg.normal, bg.gutter, nil, nil),
  CursorLineSign = hi(fg.normal, bg.cursorline, nil, nil), 

      StatusLine = hi('#fdfdfc', '#7f5107', nil, nil),
    StatusLineNC = hi('#ededed', '#818181', nil, nil),

    QuickFixLine = hi(fg.normal, '#fddddd', nil, nil),

          WinBar = hi(fg.normal, bg.normal, nil, nil),
        WinBarNC = hi(fg.normal, bg.normal, nil, nil),
    WinSeparator = hi(bg.normal, '#484848', nil, nil),

         Tabline = hi('#801010', '#ededed', 'italic', nil),
     TabLineFill = hi(nil, '#ededed', nil, nil),
      TabLineSel = hi('#801010', bg.normal, 'bold,italic', nil),

      MatchParen = hi('#484848', '#a1a9f5', nil, nil),

     EndOfBuffer = hi(nil, '#ededed', nil, nil),    -- Bottom of screen when scrolled up
         NonText = hi('#f4a3a3', bg.normal, nil, nil), 
      Whitespace = hi('#070e44', bg.normal, nil, nil),

          Visual = hi(nil, p.orange.pale, nil, nil),
       VisualNOS = hi(nil, p.grey.pale, nil, nil),  -- for when window does not have focus (X11 only)

         Conceal = hi(p.grey.vibrant, p.bg, nil, nil), 

        ErrorMsg = hi(p.yellow.pale, p.red.vibrant, 'bold', nil),   -- error messages displayed on the command line
         MoreMsg = hi(p.grey.black, p.red.pale, nil, nil),
      WarningMsg = hi(p.orange.dark1, p.red.light, nil, nil),
         ModeMsg = hi(p.grey.black, p.orange.light, nil, nil),

          Folded = hi(p.orange.dark1, p.yellow.pale, nul, nil),
      FoldColumn = hi(p.orange.dark1, p.yellow.pale, 'bold', nil),

          Search = hi(fg.highlight, bg.highlight, nil, nil),
       CurSearch = hi(fg.highlight, bg.highlight, 'bold', nil),
       IncSearch = hi(fg.highlight, bg.highlight, 'bold', nil),

        SpellBad = hi(nil, p.yellow.pale, 'undercurl', p.red.vibrant),
        SpellCap = hi(nil, nil, 'undercurl', p.purple.dark1),
       SpellRare = hi(nil, nil, 'undercurl', p.grey.light),
      SpellLocal = hi(nil, p.yellow.pale, 'undercurl', p.purple.vibrant),

       Directory = hi(p.blue.vibrant, nil, nil, nil),

         DiffAdd = hi(fg.addition, bg.addition, nil, nil),
      DiffDelete = hi(fg.deletion, bg.deletion, nil, nil),
      DiffChange = hi(fg.change, bg.change, nil, nil),
        DiffText = hi(fg.diff, bg.diff, 'underline', fg.diff),

      SpecialKey = hi(p.green.dark1, nil, nil, nil),
    
           Pmenu = hi(fg.menu, bg.menu, nil, nil),
        PmenuSel = hi(fg.selected, bg.selected, nil, nil),
    PmenuSelBold = hi(p.grey.dark2, p.chartreuse.light, 'bold', nil),
      PmenuThumb = hi(nil, p.grey.vibrant, nil, nil),
       PmenuSbar = hi(nil, p.grey.light, nil, nil),

        Question = hi(p.grey.black, p.orange.vibrant, nil, nil),
    MsgSeparator = hi(p.grey.white, p.grey.dark1, nil, nil),
           Title = hi(p.orange.vibrant, nil, nil, nil),
        WildMenu = hi(p.grey.black, p.yellow.pale, nil, nil),

            Todo = hi(p.orange.dark1, p.yellow.light, 'bold', nil),

-- Telescope  ===============================================================================

          TelescopeBorder = hi(fg.dialogborder, bg.dialog, nil, nil), 
          TelescopeNormal =  hi(fg.normal, bg.dialog, nil, nil),
       TelescopeSelection = hi(fg.selected, bg.selected, nil, nil),
  TelescopeSelectionCaret = hi(p.green.dark1, nil, nil, nil),
  TelescopeMultiSelection = hi(p.grey.dark2, p.chartreuse.light, nil, nil),
        TelescopeMatching = hi(p.grey.dark2, p.chartreuse.light, nil, nil),

-- ================== VIM Syntax =========================

         Comment = hi(p.orange.light, nil, 'italic', nil),

        Constant = hi(p.green.dark2, nil, nil, nil),
          String = hi(p.green.dark2, nil, nil, nil),
       Character = hi(p.green.dark1, nil, nil, nil),
          Number = hi(p.green.dark1, nil, nil, nil),
         Boolean = hi(p.green.dark1, nil, nil, nil),
           Float = hi(p.green.dark1, nil, nil, nil),

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

-- ================== Diagnostic =========================

         DiagnosticSignError = hi(p.red.vibrant, p.red.pale, nil, nil),
          DiagnosticSignWarn = hi(p.yellow.dark1, p.yellow.pale, nil, nil),
          DiagnosticSignInfo = hi(p.cyan.dark1, p.cyan.pale, nil, nil),
          DiagnosticSignHint = hi(p.purple.dark1, p.purple.pale, nil, nil),
  DiagnosticVirtualTextError = hi(p.red.vibrant, p.red.pale, nil, nil), 
   DiagnosticVirtualTextWarn = hi(p.yellow.dark1, p.yellow.pale, nil, nil),
   DiagnosticVirtualTextInfo = hi(p.cyan.dark1, p.cyan.pale, nil, nil),
   DiagnosticVirtualTextHint = hi(p.purple.dark1, p.purple.pale, nil, nil),
    DiagnosticUnderlineError = hi(nil, nil, 'undercurl', p.red.vibrant),
     DiagnosticUnderlineWarn = hi(nil, nil, 'undercurl', p.orange.vibrant),
     DiagnosticUnderlineInfo = hi(nil, nil, 'undercurl', p.cyan.dark1),
     DiagnosticUnderlineHint = hi(nil, nil, 'undercurl', p.purple.vibrant),
 
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

    -- Treesitter  ===============================================================================

                ['@comment'] = hi(p.orange.light, nil, 'italic', nil), 
            ['@punctuation'] = hi(p.fg, nil, nil, nil),
  ['@punctuation.delimiter'] = hi(p.fg, nil, nil, nil),
    ['@punctuation.bracket'] = hi(p.purple.dark2, nil, nil, nil),
    ['@punctuation.special'] = hi(p.blue.dark1, nil, nil, nil),
    
             ['@text.title'] = hi(p.green.dark1, p.green.ghost),
           ['@text.literal'] = hi(p.purple.dark1, p.purple.ghost),
         ['@text.reference'] = hi(p.blue.dark1, nil, nil, nil),
               ['@text.uri'] = hi(p.blue.dark2, p.blue.ghost, nil, nil),
         ['@text.underline'] = hi(nil, nil, 'underline', nil),
              ['@text.todo'] = 'Todo',
          ['@text.emphasis'] = hi(nil, p.orange.ghost, 'italic', nil),
            ['@text.strong'] = hi(nil, p.orange.light, 'bold', nil),
            ['@text.strike'] = hi(nil, nil, 'strikethrough', nil),
              ['@text.math'] = hi(nil, nil, 'italic', nil),
       ['@text.environment'] = hi(p.grey.dark1, p.grey.ghost, nil, nil),
              ['@text.note'] = hi(p.cyan.dark1, nil, nil, nil),
           ['@text.warning'] = 'WarningMsg',
            ['@text.danger'] = 'Error',
  
               ['@constant'] = hi(p.green.dark2, nil, nil, nil), 
       ['@constant.builtin'] = hi(p.green.dark1, nil, nil, nil),
                 ['@string'] = hi(p.green.dark2, nil, nil, nil),
          ['@string.escape'] = hi(p.green.dark1, nil, "bold", nil),
         ['@string.special'] = hi(p.green.dark1, nil, "bold", nil),
              ['@character'] = hi(p.green.dark1, nil, nil, nil),
      ['@character.special'] = hi(p.green.dark1, nil, "bold", nil),
                 ['@number'] = hi(p.green.dark1, nil, nil, nil),
                ['@boolean'] = hi(p.green.dark1, nil, nil, nil),
                  ['@float'] = hi(p.green.dark1, nil, nil, nil), 

                 ['@method'] = hi(p.orange.dark2, nil, nil, nil),
            ['@method.call'] = hi(p.orange.dark2, nil, nil, nil),
               ['@function'] = hi(p.orange.dark2, nil, nil, nil),
          ['@function.call'] = hi(p.orange.dark2, nil, nil, nil),
       ['@function.builtin'] = hi(p.orange.dark1, nil, nil, nil),

            ['@conditional'] = hi(p.blue.dark2, p.blue.ghost, nil, nil),
                 ['@repeat'] = hi(p.blue.dark2, p.blue.ghost, nil, nil),
                  ['@label'] = hi(p.blue.dark1, p.orange.ghost, 'bold', nil),
               ['@operator'] = hi(p.blue.dark1, nil, nil, nil),
                ['@keyword'] = hi(p.blue.dark2, p.blue.ghost, nil, nil),
         ['@keyword.return'] = hi(p.blue.dark1, p.blue.ghost, nil, nil),
       ['@keyword.function'] = hi(p.blue.dark1, p.blue.ghost, nil, nil),
       ['@keyword.operator'] = hi(p.blue.dark2, p.blue.ghost, nil, nil), 
              ['@exception'] = hi(p.blue.dark2, p.blue.ghost, nil, nil),

               ['@variable'] = hi(p.purple.dark2, nil, nil, nil),
       ['@variable.builtin'] = hi(p.purple.dark1, nil, nil, nil), 
              ['@parameter'] = hi(p.purple.dark2, p.purple.ghost, nil, nil),

    ['@parameter.reference'] = hi(p.purple.dark2, p.purple.ghost, nil, nil), 
                  ['@field'] = hi(p.purple.dark2, nil, nil, nil),
               ['@property'] = hi(p.purple.dark2, nil, nil, nil),

                   ['@type'] = hi(p.cyan.dark1, nil, nil, nil),
        ['@type.definition'] = hi(p.cyan.dark1, nil, nil, nil),
         ['@type.qualifier'] = hi(p.cyan.dark1, nil, nil, nil),
           ['@type.builtin'] = hi(p.cyan.dark2, nil, nil, nil), 
           ['@storageclass'] = hi(p.cyan.dark1, nil, nil, nil),
              ['@structure'] = hi(p.cyan.dark1, nil, nil, nil),
            ['@constructor'] = hi(p.cyan.dark1, nil, nil, nil),

              ['@namespace'] = hi(p.green.dark2, nil, nil, nil),

                ['@include'] = hi(p.red.dark1, p.red.ghost, nil, nil),
                ['@preproc'] = hi(p.red.dark1, p.red.ghost, nil, nil),
                 ['@define'] = hi(p.red.dark1, p.red.ghost, nil, nil),
         ['@constant.macro'] = hi(p.red.dark1, nil, nil, nil),
         ['@function.macro'] = hi(p.red.dark1, nil, nil, nil),
                  ['@macro'] = hi(p.red.dark1, nil, nil, nil),
             ['@annotation'] = hi(p.grey.vibrant, p.red.ghost, 'bold', nil),
              ['@attribute'] = hi(p.grey.vibrant, p.red.ghost, 'bold', nil),
      
                   ['@todo'] =  hi(p.orange.dark1, p.yellow.light, 'bold', nil)
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

M.colorscheme = function()
  vim.cmd('hi clear')
  if (vim.fn.exists('syntax_on')) then
    vim.cmd('syntax reset')
  end
  vim.o.background = 'light'
  vim.o.termguicolors = true
  for group, style in pairs(scheme) do
    if (type(style) == 'string') then
      link(group, style)
    else
      highlight(group, style)
    end
  end
end


return M
