local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors

local M = {}

function M.setup()
  Group.new("GitSignsAdd", colors.git.add)
  Group.new("GitSignsChange", colors.git.changed)
  Group.new("GitSignsDelete", colors.git.removed)
end

return M
