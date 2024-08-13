-- lua/lean/highlights/plugins/cmp.lua

local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors
local styles = colorbuddy.styles

local M = {}

function M.setup()
  -- Documentation window
  Group.new("CmpDocumentation", colors.fg.default, colors.bg.subtle)
  Group.new("CmpDocumentationBorder", colors.border.muted, colors.bg.subtle)

  -- Main completion items
  Group.new("CmpItemAbbr", colors.fg.default)
  Group.new("CmpItemAbbrDeprecated", colors.syntax.dep, colors.none, styles.strikethrough)
  Group.new("CmpItemAbbrMatch", colors.accent.fg)
  Group.new("CmpItemAbbrMatchFuzzy", colors.accent.fg)

  -- Menu appearance
  Group.new("CmpItemKindDefault", colors.fg.default)
  Group.new("CmpItemMenu", colors.fg.muted)

  -- Kind-specific highlighting
  Group.new("CmpItemKindKeyword", colors.syntax.keyword)
  Group.new("CmpItemKindVariable", colors.syntax.variable)
  Group.new("CmpItemKindConstant", colors.syntax.constant)
  Group.new("CmpItemKindReference", colors.syntax.keyword)
  Group.new("CmpItemKindValue", colors.syntax.constant)
  Group.new("CmpItemKindFunction", colors.syntax.entity)
  Group.new("CmpItemKindMethod", colors.syntax.entity)
  Group.new("CmpItemKindConstructor", colors.syntax.entity)
  Group.new("CmpItemKindInterface", colors.syntax.type)
  Group.new("CmpItemKindEvent", colors.syntax.constant)
  Group.new("CmpItemKindEnum", colors.syntax.type)
  Group.new("CmpItemKindUnit", colors.syntax.constant)
  Group.new("CmpItemKindClass", colors.syntax.type)
  Group.new("CmpItemKindStruct", colors.syntax.type)
  Group.new("CmpItemKindModule", colors.syntax.keyword)
  Group.new("CmpItemKindProperty", colors.syntax.variable)
  Group.new("CmpItemKindField", colors.syntax.variable)
  Group.new("CmpItemKindTypeParameter", colors.syntax.type)
  Group.new("CmpItemKindEnumMember", colors.syntax.constant)
  Group.new("CmpItemKindOperator", colors.syntax.keyword)
  Group.new("CmpItemKindSnippet", colors.special.cyan.base)

  -- Additional
  Group.new("CmpItemKindText", colors.fg.default)
  Group.new("CmpItemKindFile", colors.fg.default)
  Group.new("CmpItemKindFolder", colors.fg.default)
end

return M
