local p = require('collaterlie_palette')

return {
  normal = {
    a = { fg = p.orange.dark2, bg = p.orange.vibrant },
    b = { fg = p.red.dark2, bg = p.red.pale },
    c = { fg = p.bg, bg =  p.orange.dark1 },
  },
  insert = {
    a = { fg = p.red.pale, bg = p.blue.dark2 },
    b = { fg = p.red.dark2, bg = p.red.pale },
    c = { fg = p.bg, bg =  p.orange.dark1 },
  },
  visual = {
    a = { fg = p.orange.vibrant, bg = p.orange.dark2 },
    b = { fg = p.red.dark2, bg = p.red.pale },
    c = { fg = p.bg, bg =  p.orange.dark1 },
  },
  replace = {
    a = { fg = p.red.pale, bg = p.red.vibrant },
    b = { fg = p.red.dark2, bg = p.red.pale },
    c = { fg = p.bg, bg =  p.orange.dark1 },
  },
  command = {
    a = { fg = p.purple.pale, bg = p.purple.vibrant },
    b = { fg = p.red.dark2, bg = p.red.pale },
    c = { fg = p.bg, bg =  p.orange.dark1 },
  },
  inactive = {
    a = { fg = p.grey.pale, gui = 'bold', bg = p.grey.dark1 },
    b = { fg = p.grey.dark2, bg = p.grey.pale },
    c = { fg = '#432b04', bg = '#f0e2d8' },
  }
}
