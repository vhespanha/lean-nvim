local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors
local styles = colorbuddy.styles

local M = {}

function M.setup()
  -- Identifiers
  Group.new("@variable", colors.syntax.variable)
  Group.new("@variable.builtin", colors.syntax.constant)
  Group.new("@variable.member", colors.syntax.variable)
  Group.new("@variable.parameter", colors.syntax.variable)

  Group.new("@constant.builtin", colors.syntax.constant)
  Group.link("@constant.macro", "Macro")

  Group.new("@module", colors.syntax.entity)
  Group.new("@module.builtin", colors.syntax.constant)
  Group.link("@label", "@tag")

  -- Literals
  Group.new("@string.regexp", colors.syntax.regex)
  Group.new("@string.escape", colors.syntax.regex, colors.none, styles.bold)
  Group.new("@string.special.symbol", colors.syntax.constant)
  Group.new("@string.special.url", colors.syntax.string, colors.none, styles.underline)

  -- Types
  Group.new("@type", colors.syntax.entity)
  Group.new("@type.builtin", colors.syntax.keyword)
  Group.new("@type.qualifier", colors.syntax.keyword)
  Group.link("@attribute", "Constant")
  Group.link("@property", "@variable.member")

  -- Functions
  Group.new("@function.builtin", colors.syntax.entity)
  Group.new("@constructor", colors.syntax.entity)

  -- Keywords
  Group.new("@keyword.function", colors.syntax.keyword)
  Group.new("@keyword.operator", colors.syntax.keyword)
  Group.new("@keyword.exception", colors.syntax.keyword)

  -- Punctuation
  Group.new("@punctuation.bracket", colors.syntax.bracket)

  -- Comment
  Group.new("@comment.error", colors.bg.default, colors.diag.error)
  Group.new("@comment.warning", colors.bg.default, colors.diag.warn)
  Group.new("@comment.hint", colors.bg.default, colors.diag.hint)
  Group.new("@comment.info", colors.bg.default, colors.diag.info)
  Group.new("@comment.todo", colors.bg.default, colors.diag.hint)

  -- Diff
  Group.link("@diff.plus", "diffAdded")
  Group.link("@diff.minus", "diffRemoved")
  Group.link("@diff.delta", "diffChanged")

  -- Tags
  Group.new("@tag", colors.syntax.tag)
  Group.link("@tag.attribute", "@variable.member")
  Group.link("@tag.delimiter", "NONE")

  -- Language specific
  -- Bash
  Group.new("@operator.bash", colors.syntax.keyword)
  Group.new("@function.builtin.bash", colors.syntax.keyword)
  Group.new("@function.call.bash", colors.syntax.constant)
  Group.new("@punctuation.delimiter.bash", colors.syntax.keyword)

  -- CSS
  Group.link("@type.css", "htmlTag")

  -- HTML specific highlights
  Group.new("@tag", colors.syntax.tag)
  Group.new("@tag.attribute", colors.syntax.variable)
  Group.new("@tag.delimiter", colors.fg.muted)

  Group.new("@string.html", colors.syntax.string)
  Group.new("@punctuation.delimiter.html", colors.fg.muted)
  Group.new("@punctuation.bracket.html", colors.fg.muted)

  Group.new("@markup", colors.fg.default)
  Group.new("@markup.heading", colors.syntax.constant, colors.none, styles.bold)
  Group.new("@markup.strong", colors.fg.default, colors.none, styles.bold)
  Group.new("@markup.italic", colors.fg.default, colors.none, styles.italic)
  Group.new("@markup.strikethrough", colors.fg.default, colors.none, styles.strikethrough)
  Group.new("@markup.underline", colors.fg.default, colors.none, styles.underline)

  Group.new("@markup.link", colors.special.cyan.base)
  Group.new("@markup.link.url", colors.syntax.string, colors.none, styles.underline)

  Group.new("@markup.list", colors.syntax.constant)
  Group.new("@markup.list.checked", colors.success.fg)
  Group.new("@markup.list.unchecked", colors.fg.subtle)

  Group.new("@markup.raw", colors.syntax.string)
  Group.new("@markup.raw.inline", colors.syntax.string, colors.bg.subtle)

  Group.new("@markup.environment", colors.syntax.keyword)
  Group.new("@markup.environment.name", colors.syntax.entity)

  Group.new("@keyword.html", colors.syntax.keyword)
  Group.new("@function.html", colors.syntax.entity)
  Group.new("@property.html", colors.syntax.variable)
  Group.new("@number.html", colors.syntax.constant)

  Group.new("@comment.html", colors.syntax.comment)

  Group.new("@string.special.html", colors.special.cyan.bright)

  -- JSON
  Group.link("@label.json", "@tag")

  -- Lua
  Group.new("@field.lua", colors.syntax.variable)
  Group.new("@function.call.lua", colors.syntax.constant)
  Group.link("@function.method.call.lua", "@function.call.lua")
  Group.new("@module.builtin.lua", colors.syntax.constant)

  -- Markdown
  Group.new("@punctuation.delimiter.markdown", colors.fg.default)
  Group.new("@punctuation.delimiter.markdown_inline", colors.fg.default)
  Group.new("@markup.quote.markdown", colors.syntax.tag)

  -- YAML
  Group.link("@field.yaml", "@tag")

  -- Golang specific highlights
  Group.new("@keyword.go", colors.syntax.keyword)
  Group.new("@type.go", colors.syntax.entity)
  Group.new("@type.builtin.go", colors.syntax.constant)
  Group.new("@variable.go", colors.fg.default)
  Group.new("@variable.builtin.go", colors.syntax.constant)
  Group.new("@constant.go", colors.syntax.constant)
  Group.new("@function.go", colors.syntax.entity)
  Group.new("@function.builtin.go", colors.syntax.constant)
  Group.new("@function.method.go", colors.syntax.entity)
  Group.new("@function.call.go", colors.syntax.entity)
  Group.new("@method.go", colors.syntax.entity)
  Group.new("@field.go", colors.fg.default)
  Group.new("@property.go", colors.fg.default)
  Group.new("@parameter.go", colors.fg.default)
  Group.new("@operator.go", colors.syntax.keyword)
  Group.new("@namespace.go", colors.fg.default)
  Group.new("@punctuation.delimiter.go", colors.fg.muted)
  Group.new("@punctuation.bracket.go", colors.fg.muted)
  Group.new("@string.go", colors.syntax.string)
  Group.new("@number.go", colors.syntax.constant)
  Group.new("@boolean.go", colors.syntax.constant)
  Group.new("@comment.go", colors.syntax.comment)

  -- Special cases
  Group.new("@label.go", colors.syntax.constant)
  Group.new("@keyword.function.go", colors.syntax.keyword)
  Group.new("@keyword.operator.go", colors.syntax.keyword)
  Group.new("@keyword.return.go", colors.syntax.keyword)

  -- Types
  Group.new("@type.definition.go", colors.syntax.entity)
  Group.new("@type.qualifier.go", colors.syntax.keyword)

  -- Structs
  Group.new("@variable.member.go", colors.fg.default)

  -- Interfaces
  Group.new("@type.interface.go", colors.syntax.entity)

  -- Packages
  Group.new("@module.go", colors.syntax.entity)

  -- Imports
  Group.new("@string.special.url.go", colors.syntax.entity)

  -- Context
  Group.new("TreesitterContext", colors.none, colors.accent.subtle)
end

return M
