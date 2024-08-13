local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")
local styles = colorbuddy.styles

local M = {}

function M.setup()
  Group.link("NeoTreeNormal", "NormalSB")
  Group.link("NeoTreeNormalNC", "NeoTreeNormal")
  Group.new("NeoTreeTitleBar", colors.bg.default, colors.blue[4])
  Group.new("NeoTreeEndOfBuffer", colors.fg.subtle)
  Group.new("NeoTreeIndentMarker", colors.fg.subtle)

  Group.new("NeoTreeRootName", colors.fg.default, colors.none, styles.bold)
  Group.new("NeoTreeDirectoryName", colors.fg.default)
  Group.new("NeoTreeDirectoryIcon", colors.fg.default)
  Group.new("NeoTreeDotfile", colors.blue[2])
  Group.new("NeoTreeSymbolicLinkTarget", colors.pink[2])
  Group.new("NeoTreeFileName", colors.fg.default)
  Group.new("NeoTreeFileNameOpened", colors.blue[2])
  Group.link("NeoTreeDimText", "Conceal")

  Group.new("NeoTreeGitModified", colors.git.changed)
  Group.new("NeoTreeGitAdded", colors.git.add)
  Group.new("NeoTreeGitDeleted", colors.git.removed)
  Group.new("NeoTreeGitConflict", colors.git.conflict, colors.none, styles.italic)
  Group.new("NeoTreeGitIgnored", colors.git.ignored)
  Group.new("NeoTreeGitUntracked", colors.special.cyan.bright)
end

return M
