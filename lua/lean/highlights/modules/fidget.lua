local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group

local M = {}

function M.setup()
  Group.link("FidgetTitle", "Title")
  Group.link("FidgetTask", "LineNr")
end

return M
