local colors = {
  medium = '#908CA9',
  grey   = '#DFDDF3',
  red    = '#0000ffff',
  pine   = '#286983',
  deep   = '#6E6A86',
  iris   = '#907AA8',
  love   = '#B3637A',
  white  = '#FFFFFF',
}
return {
  theme = {
    normal = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.pine, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.pine, gui = "bold" },
    },
    visual = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.iris, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.iris, gui = "bold" },
    },
    insert = {
      c = { ft = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.love, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.love, gui = "bold" },
    },
    inactive = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
    },
    command = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
    },
    replace = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
    },
  },
}
