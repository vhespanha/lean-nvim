local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors
local styles = colorbuddy.styles

local M = {}

function M.setup()
  Group.new("MiniCompletionActiveParameter", colors.none, colors.none, styles.underline)

  Group.new("MiniCursorword", colors.none, colors.accent.subtle)
  Group.new("MiniCursorwordCurrent", colors.none, colors.accent.subtle)

  Group.link("MiniIndentscopeSymbol", "Delimiter")
  Group.new("MiniIndentscopePrefix", colors.none, colors.none, styles.nocombine)

  Group.link("MiniJump", "SpellRare")

  Group.new("MiniJump2dSpot", colors.pink[4], colors.none, styles.bold)

  Group.new("MiniStarterCurrent", colors.none, colors.none, styles.nocombine)
  Group.new("MiniStarterFooter", colors.fg.subtle, colors.none, styles.italic)
  Group.new("MiniStarterHeader", colors.blue[4])
  Group.link("MiniStarterInactive", "Comment")
  Group.link("MiniStarterItem", "Normal")
  Group.new("MiniStarterItemBullet", colors.border.default)
  Group.new("MiniStarterItemPrefix", colors.diag.warn)
  Group.link("MiniStarterSection", "Special")
  Group.new("MiniStarterQuery", colors.diag.info)

  Group.new("MiniStatuslineDevinfo", colors.fg.default, colors.bg.subtle)
  Group.new("MiniStatuslineFileinfo", colors.fg.default, colors.bg.subtle)
  Group.new("MiniStatuslineFilename", colors.fg.muted, colors.bg.default)
  Group.new("MiniStatuslineInactive", colors.fg.muted, colors.bg.inset)
  Group.new("MiniStatuslineModeCommand", colors.bg.default, colors.pink[4], styles.bold)
  Group.new("MiniStatuslineModeInsert", colors.bg.default, colors.green[3], styles.bold)
  Group.new("MiniStatuslineModeNormal", colors.bg.default, colors.blue[4], styles.bold)
  Group.new("MiniStatuslineModeOther", colors.bg.default, colors.orange[4], styles.bold)
  Group.new("MiniStatuslineModeReplace", colors.bg.default, colors.red[4], styles.bold)
  Group.new("MiniStatuslineModeVisual", colors.bg.default, colors.yellow[4], styles.bold)

  Group.link("MiniSurround", "IncSearch")

  Group.new("MiniTablineCurrent", colors.bg.default, colors.blue[4], styles.bold)
  Group.link("MiniTablineFill", "TabLineFill")
  Group.new("MiniTablineHidden", colors.fg.default, colors.bg.default)
  Group.new("MiniTablineModifiedCurrent", colors.blue[4], colors.bg.default, styles.bold)
  Group.new("MiniTablineModifiedHidden", colors.bg.default, colors.fg.default)
  Group.new("MiniTablineModifiedVisible", colors.blue[3], colors.bg.default)
  Group.new("MiniTablineTabpagesection", colors.none, colors.accent.subtle, styles.bold)
  Group.new("MiniTablineVisible", colors.bg.default, colors.blue[3])

  Group.new("MiniTestEmphasis", colors.none, colors.none, styles.bold)
  Group.new("MiniTestFail", colors.red[4], colors.none, styles.bold)
  Group.new("MiniTestPass", colors.green[3], colors.none, styles.bold)

  Group.new("MiniTrailspace", colors.none, colors.red[4])
end

return M
