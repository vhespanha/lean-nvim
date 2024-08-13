local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")

local M = {}

function M.setup()
  -- ERROR
  Group.new("NotifyERRORTitle", colors.red[4])
  Group.link("NotifyERRORIcon", "NotifyERRORTitle")
  Group.link("NotifyERRORBorder", "NotifyERRORTitle")
  Group.link("NotifyERRORBody", "Normal")

  -- WARN
  Group.new("NotifyWARNTitle", colors.yellow[4])
  Group.link("NotifyWARNIcon", "NotifyWARNTitle")
  Group.link("NotifyWARNBorder", "NotifyWARNTitle")
  Group.link("NotifyWARNBody", "Normal")

  -- INFO
  Group.new("NotifyINFOTitle", colors.green[3])
  Group.link("NotifyINFOIcon", "NotifyINFOTitle")
  Group.link("NotifyINFOBorder", "NotifyINFOTitle")
  Group.link("NotifyINFOBody", "Normal")

  -- DEBUG
  Group.new("NotifyDEBUGTitle", colors.fg.default)
  Group.link("NotifyDEBUGIcon", "NotifyDEBUGTitle")
  Group.link("NotifyDEBUGBorder", "NotifyDEBUGTitle")
  Group.link("NotifyDEBUGBody", "Normal")

  -- TRACE
  Group.new("NotifyTRACETitle", colors.pink[2])
  Group.link("NotifyTRACEIcon", "NotifyTRACETitle")
  Group.link("NotifyTRACEBorder", "NotifyTRACETitle")
  Group.link("NotifyTRACEBody", "Normal")
end

return M
