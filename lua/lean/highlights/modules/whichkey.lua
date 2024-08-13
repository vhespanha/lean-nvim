local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")

local M = {}

function M.setup()
  Group.link("WhichKey", "Identifier")
  Group.link("WhichKeyGroup", "Function")
  Group.link("WhichKeyDesc", "Keyword")
  Group.link("WhichKeySeperator", "Comment")
  Group.link("WhichKeySeparator", "Comment")
  Group.new("WhichKeyFloat", colors.none, colors.bg.inset)
  Group.link("WhichKeyValue", "Comment")
end

return M
