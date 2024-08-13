local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors

local M = {}

function M.setup()
  Group.new("DiffAdd", colors.git.add, colors.git.add .. "22")
  Group.new("DiffChange", colors.git.changed, colors.git.changed .. "22")
  Group.new("DiffDelete", colors.git.removed, colors.git.removed .. "22")
  Group.new("DiffText", colors.fg.default, colors.bg.subtle)
end

return M
