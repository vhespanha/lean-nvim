local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors

local M = {}

function M.setup(opts)
  opts = opts or {}

  Group.new("LspReferenceText", colors.none, colors.accent.subtle)
  Group.new("LspReferenceRead", colors.none, colors.accent.subtle)
  Group.new("LspReferenceWrite", colors.none, colors.accent.subtle)

  Group.new("LspCodeLens", colors.syntax.comment)
  Group.new("LspCodeLensSeparator", colors.fg.subtle)
  Group.new("LspSignatureActiveParameter", colors.accent.fg)

  Group.new("LspInlayHint", colors.syntax.comment, opts.background and colors.bg.subtle or colors.none)
end

return M
