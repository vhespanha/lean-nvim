local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")

local M = {}

function M.setup()
  Group.new("LspTroubleText", colors.fg.muted)
  Group.new("LspTroubleCount", colors.pink[4], colors.fg.subtle) -- Using pink instead of magenta
  Group.new("LspTroubleNormal", colors.fg.subtle, colors.bg.inset)
end

return M
