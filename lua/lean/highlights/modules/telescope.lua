local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors

local M = {}

function M.setup()
  Group.new("TelescopeSelectionCaret", colors.fg.muted)
  Group.link("TelescopeSelection", "CursorLine")
  Group.link("TelescopeMatching", "Search")
  Group.new("TelescopeBorder", colors.border.muted)
  Group.new("TelescopeNormal", colors.fg.default)
end

return M
