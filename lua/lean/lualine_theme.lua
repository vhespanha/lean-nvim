local M = {}

function M.setup()
  local colors = require("lean.colors")

  local lean_lualine = {
    normal = {
      a = { fg = colors.purple[5], bg = colors.bg.default },
      b = { fg = colors.fg.muted, bg = colors.bg.default },
      c = { fg = colors.fg.muted, bg = colors.bg.default },
      z = { fg = colors.fg.muted, bg = colors.bg.default },
    },
    insert = {
      a = { fg = colors.green[3], bg = colors.bg.default },
      b = { fg = colors.fg.muted, bg = colors.bg.default },
      c = { fg = colors.fg.muted, bg = colors.bg.default },
      z = { fg = colors.fg.muted, bg = colors.bg.default },
    },
    visual = {
      a = { fg = colors.blue[3], bg = colors.bg.default },
      b = { fg = colors.fg.muted, bg = colors.bg.default },
      c = { fg = colors.fg.muted, bg = colors.bg.default },
      z = { fg = colors.fg.muted, bg = colors.bg.default },
    },
    replace = {
      a = { fg = colors.yellow[3], bg = colors.bg.default },
      b = { fg = colors.fg.muted, bg = colors.bg.default },
      c = { fg = colors.fg.muted, bg = colors.bg.default },
      z = { fg = colors.fg.muted, bg = colors.bg.default },
    },
    inactive = {
      a = { fg = colors.fg.muted, bg = colors.bg.default },
      b = { fg = colors.fg.muted, bg = colors.bg.default },
      c = { fg = colors.fg.muted, bg = colors.bg.default },
      z = { fg = colors.fg.muted, bg = colors.bg.default },
    },
  }

  return lean_lualine
end

return M
