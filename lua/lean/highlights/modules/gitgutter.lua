local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")

local M = {}

function M.setup()
  Group.new("GitGutterAdd", colors.git.add)
  Group.new("GitGutterChange", colors.git.changed)
  Group.new("GitGutterDelete", colors.git.removed)
end

return M
