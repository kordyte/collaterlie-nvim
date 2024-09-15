-- lualine theme to complement collaterlie colorscheme

local common = {
  b = { fg = '#560707', bg = '#fddddd' },
  c = { fg = '#f0e2d8', bg = '#9f7130' },
  inactive = { fg = '#9f7130', bg = '#f0e2d8' }
}

return {
  normal = {
    a = { fg = '#7f5107', bg = '#f2a820' },
    b = common.b,
    c = common.c,
  },
  insert = {
    a = { fg = '#fddddd', bg = '#192ce2' },
    b = common.b,
    c = common.c,
  },
  visual = {
    a = { fg = '#444444', bg = '#fef040' },
    b = common.b,
    c = common.c,
  },
  replace = {
    a = { fg = '#fdddddd', bg = '#e31c1c' },
    b = common.b,
    c = common.c,
  },
  command = {
    a = { fg = '#f9defc', bg = '#d319e2' },
    b = common.b,
    c = common.c,
  },
  inactive = {
    a = common.inactive,
    b = common.inactive,
    c = common.inactive,
  }
}
