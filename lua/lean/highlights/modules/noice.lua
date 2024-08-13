local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")
local styles = colorbuddy.styles

local M = {}

function M.setup()
  -- Cmdline
  Group.link("NoiceCmdline", "Normal")
  Group.link("NoiceCmdlineIcon", "DiagnosticSignInfo")
  Group.link("NoiceCmdlineIconSearch", "DiagnosticSignWarn")
  Group.new("NoiceCmdlinePopup", colors.fg.default, colors.bg.inset)
  Group.new("NoiceCmdlinePopupBorder", colors.border.muted)
  Group.link("NoiceCmdlinePopupBorderSearch", "DiagnosticSignWarn")
  Group.link("NoiceCmdlinePopupTitle", "Title")
  Group.new("NoiceCmdlinePrompt", colors.fg.default, colors.none, styles.bold)

  -- Completion
  Group.new("NoiceCompletionItemKindDefault", colors.syntax.constant)
  Group.new("NoiceCompletionItemMenu", colors.fg.muted)
  Group.new("NoiceCompletionItemWord", colors.fg.default)

  -- Confirm
  Group.link("NoiceConfirm", "Normal")
  Group.new("NoiceConfirmBorder", colors.border.muted)

  -- Cursor
  Group.link("NoiceCursor", "Cursor")

  -- Format
  Group.new("NoiceFormatConfirm", colors.none, colors.bg.subtle)
  Group.new("NoiceFormatConfirmDefault", colors.none, colors.accent.subtle)
  Group.new("NoiceFormatDate", colors.syntax.constant)
  Group.new("NoiceFormatEvent", colors.fg.muted)
  Group.new("NoiceFormatKind", colors.fg.muted)
  Group.link("NoiceFormatLevelDebug", "Comment")
  Group.link("NoiceFormatLevelError", "DiagnosticVirtualTextError")
  Group.link("NoiceFormatLevelInfo", "DiagnosticVirtualTextInfo")
  Group.link("NoiceFormatLevelOff", "Comment")
  Group.link("NoiceFormatLevelTrace", "Comment")
  Group.link("NoiceFormatLevelWarn", "DiagnosticVirtualTextWarn")
  Group.new("NoiceFormatProgressDone", colors.none, colors.accent.emphasis)
  Group.new("NoiceFormatProgressTodo", colors.none, colors.bg.subtle)
  Group.link("NoiceFormatTitle", "Title")

  -- LSP Progress
  Group.new("NoiceLspProgressClient", colors.fg.default, colors.none, styles.bold)
  Group.new("NoiceLspProgressSpinner", colors.syntax.constant)
  Group.new("NoiceLspProgressTitle", colors.fg.muted)

  -- Mini
  Group.link("NoiceMini", "Normal")

  -- Popup
  Group.link("NoicePopup", "NormalFloat")
  Group.new("NoicePopupBorder", colors.border.muted)

  -- Popupmenu
  Group.link("NoicePopupmenu", "Pmenu")
  Group.new("NoicePopupmenuBorder", colors.border.muted)
  Group.new("NoicePopupmenuMatch", colors.syntax.constant)
  Group.link("NoicePopupmenuSelected", "PmenuSel")

  -- Scrollbar
  Group.link("NoiceScrollbar", "PmenuSbar")
  Group.link("NoiceScrollbarThumb", "PmenuThumb")

  -- Split
  Group.link("NoiceSplit", "NormalFloat")
  Group.new("NoiceSplitBorder", colors.border.muted)

  -- VirtualText
  Group.link("NoiceVirtualText", "DiagnosticVirtualTextInfo")
end

return M
