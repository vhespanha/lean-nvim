local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")
local styles = colorbuddy.styles

local M = {}

function M.setup()
  Group.new("DapUIScope", colors.special.cyan.base)
  Group.new("DapUIType", colors.pink[4])
  Group.new("DapUIModifiedValue", colors.special.cyan.base, colors.none, styles.bold)
  Group.new("DapUIDecoration", colors.special.cyan.base)
  Group.new("DapUIThread", colors.green[3], colors.none, styles.bold)
  Group.new("DapUIStoppedThread", colors.special.cyan.base)
  Group.new("DapUISource", colors.pink[4])
  Group.new("DapUILineNumber", colors.special.cyan.base)
  Group.new("DapUIFloatBorder", colors.special.cyan.base)
  Group.new("DapUIWatchesEmpty", colors.red[4])
  Group.new("DapUIWatchesValue", colors.green[3])
  Group.new("DapUIWatchesError", colors.red[4])
  Group.new("DapUIBreakpointsPath", colors.special.cyan.base)
  Group.new("DapUIBreakpointsInfo", colors.green[3])
  Group.new("DapUIBreakpointsCurrentLine", colors.green[3], colors.none, styles.bold)
  Group.new("DapUIBreakpointsDisabledLine", colors.fg.subtle)
  Group.new("DapUIStepOver", colors.special.cyan.base)
  Group.new("DapUIStepInto", colors.special.cyan.base)
  Group.new("DapUIStepBack", colors.special.cyan.base)
  Group.new("DapUIStepOut", colors.special.cyan.base)
  Group.new("DapUIStop", colors.red[4])
  Group.new("DapUIPlayPause", colors.green[3])
  Group.new("DapUIRestart", colors.green[3])
  Group.new("DapUIUnavailable", colors.fg.subtle)
  Group.new("DapUIWinSelect", colors.special.cyan.base, colors.none, styles.bold)
end

return M
