local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = require("lean.colors")
local styles = colorbuddy.styles

local M = {}

function M.setup(opts)
  opts = opts or {}

  Group.new("DiagnosticError", colors.diag.error)
  Group.new("DiagnosticWarn", colors.diag.warn)
  Group.new("DiagnosticInfo", colors.diag.info)
  Group.new("DiagnosticHint", colors.diag.hint)

  Group.new("DiagnosticSignError", colors.diag.error)
  Group.new("DiagnosticSignWarn", colors.diag.warn)
  Group.new("DiagnosticSignInfo", colors.diag.info)
  Group.new("DiagnosticSignHint", colors.diag.hint)

  Group.new(
    "DiagnosticVirtualTextError",
    colors.diag.error,
    opts.background and colors.diag.error .. "22" or colors.none
  )
  Group.new("DiagnosticVirtualTextWarn", colors.diag.warn, opts.background and colors.diag.warn .. "22" or colors.none)
  Group.new("DiagnosticVirtualTextInfo", colors.diag.info, opts.background and colors.diag.info .. "22" or colors.none)
  Group.new("DiagnosticVirtualTextHint", colors.diag.hint, opts.background and colors.diag.hint .. "22" or colors.none)

  Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, colors.diag.error)
  Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, colors.diag.warn)
  Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, colors.diag.info)
  Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, colors.diag.hint)
end

return M
