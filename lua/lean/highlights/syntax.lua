local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors
local styles = colorbuddy.styles

-- Syntax highlights
Group.new("Comment", colors.syntax.comment, colors.none, styles.italic)
Group.new("Constant", colors.syntax.constant)
Group.new("String", colors.syntax.string)
Group.new("Character", colors.syntax.string)
Group.new("Number", colors.syntax.constant)
Group.new("Boolean", colors.syntax.constant)
Group.new("Float", colors.syntax.constant)

Group.new("Identifier", colors.syntax.variable)
Group.new("Function", colors.syntax.entity)

Group.new("Statement", colors.syntax.keyword)
Group.new("Conditional", colors.syntax.keyword)
Group.new("Repeat", colors.syntax.keyword)
Group.new("Label", colors.syntax.keyword)
Group.new("Operator", colors.syntax.keyword)
Group.new("Keyword", colors.syntax.keyword)
Group.new("Exception", colors.syntax.keyword)

Group.new("PreProc", colors.syntax.keyword)
Group.new("Include", colors.syntax.keyword)
Group.new("Define", colors.syntax.keyword)
Group.new("Macro", colors.syntax.keyword)
Group.new("PreCondit", colors.syntax.keyword)

Group.new("Type", colors.syntax.type)
Group.new("StorageClass", colors.syntax.type)
Group.new("Structure", colors.syntax.type)
Group.new("Typedef", colors.syntax.type)

Group.new("Special", colors.fg.default)
Group.new("SpecialChar", colors.fg.default)
Group.new("Tag", colors.fg.default)
Group.new("Delimiter", colors.fg.default)
Group.new("SpecialComment", colors.fg.default)
Group.new("Debug", colors.fg.default)

Group.new("Underlined", colors.none, colors.none, styles.underline)
Group.new("Bold", colors.none, colors.none, styles.bold)
Group.new("Italic", colors.none, colors.none, styles.italic)

Group.new("Error", colors.diag.error)
Group.new("Todo", colors.bg.default, colors.diag.info)

Group.new("qfLineNr", colors.fg.subtle)
Group.new("qfFileName", colors.syntax.func)

Group.new("htmlTag", colors.syntax.tag)
Group.new("xmlAttrib", colors.syntax.tag)
Group.new("xmlTagName", colors.syntax.tag)

Group.new("cssBraces", colors.syntax.bracket)
Group.new("cssMedia", colors.syntax.keyword)
Group.new("cssProp", colors.syntax.constant)
Group.new("cssPseudoClassId", colors.syntax.entity)

Group.new("lessAmpersand", colors.syntax.entity)
Group.new("lessClass", colors.syntax.entity)
Group.new("lessClassCall", colors.syntax.entity)
Group.new("lessCssAttribute", colors.syntax.constant)
Group.new("lessFunction", colors.syntax.constant)
Group.new("lessVariable", colors.syntax.variable)

Group.new("markdownHeadingDelimiter", colors.syntax.comment)
Group.new("markdownCode", colors.fg.default, colors.none, styles.italic)
Group.new("markdownCodeBlock", colors.fg.default, colors.bg.subtle)
Group.new("markdownH1", colors.blue[4], colors.none, styles.bold)
Group.new("markdownH2", colors.green[4], colors.none, styles.bold)
Group.new("markdownH3", colors.yellow[4], colors.none, styles.bold)
Group.new("markdownH4", colors.orange[4], colors.none, styles.bold)
Group.new("markdownH5", colors.purple[4], colors.none, styles.bold)
Group.new("markdownH6", colors.pink[4], colors.none, styles.bold)

Group.new("markdownLinkText", colors.fg.default)

-- Diff highlights
Group.new("diffAdded", colors.git.add, colors.git.add .. "22")
Group.new("diffRemoved", colors.git.removed, colors.git.removed .. "22")
Group.new("diffChanged", colors.git.changed, colors.git.changed .. "22")
Group.new("diffOldFile", colors.diag.warn)
Group.new("diffNewFile", colors.diag.hint)
Group.new("diffFile", colors.diag.info)
Group.new("diffLine", colors.syntax.constant)
Group.new("diffIndexLine", colors.syntax.keyword)

-- Language specific highlights
Group.new("jsonKeyword", colors.syntax.tag)
Group.new("jsonNull", colors.syntax.constant)

Group.new("luaFunction", colors.syntax.keyword)
-- luaTable is left as default

Group.new("yamlBlockMappingKey", colors.syntax.tag)
Group.new("yamlFlowMappingKey", colors.syntax.tag)

-- Rainbow delimiters
Group.new("RainbowDelimiterRed", colors.red[4])
Group.new("RainbowDelimiterYellow", colors.yellow[4])
Group.new("RainbowDelimiterBlue", colors.blue[4])
Group.new("RainbowDelimiterOrange", colors.orange[4])
Group.new("RainbowDelimiterGreen", colors.green[4])
Group.new("RainbowDelimiterViolet", colors.purple[4])
Group.new("RainbowDelimiterCyan", colors.special.cyan.base)

-- Render markdown
Group.new("RenderMarkdownCode", colors.none, colors.bg.subtle)
