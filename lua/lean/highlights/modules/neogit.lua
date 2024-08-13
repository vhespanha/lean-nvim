local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors

local M = {}

function M.setup()
  Group.new("NeogitBranch", colors.diag.warn)
  Group.new("NeogitRemote", colors.diag.hint)

  Group.new("NeogitHunkHeader", colors.diag.info, colors.bg.subtle)
  Group.new("NeogitHunkHeaderHighlight", colors.diag.info, colors.accent.subtle)

  Group.new("NeogitDiffAdd", colors.git.add)
  Group.new("NeogitDiffDelete", colors.git.removed)

  Group.new("NeogitDiffAddHighlight", colors.none, colors.git.add .. "22")
  Group.new("NeogitDiffDeleteHighlight", colors.none, colors.git.removed .. "22")
  Group.new("NeogitDiffContextHighlight", colors.none, colors.bg.subtle)

  Group.new("NeogitNotificationInfo", colors.diag.info)
  Group.new("NeogitNotificationWarning", colors.diag.warn)
  Group.new("NeogitNotificationError", colors.diag.error)
end

return M
