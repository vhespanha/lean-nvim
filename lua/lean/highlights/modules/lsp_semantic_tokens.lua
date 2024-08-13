local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group

local M = {}

function M.setup()
  Group.link("@lsp.type.enum", "@type")
  Group.link("@lsp.type.keyword", "@keyword")
  Group.link("@lsp.type.interface", "@interface")
  Group.link("@lsp.type.namespace", "@namespace")
  Group.link("@lsp.type.parameter", "@variable.parameter")
  Group.link("@lsp.type.class", "@function")
  -- Group.new('@lsp.type.property', colors.none)  -- use treesitter styles for regular properties
  -- Group.new('@lsp.type.variable', colors.none)  -- use treesitter styles for regular variables
  Group.link("@lsp.typemod.method.defaultLibrary", "@function.builtin")
  Group.link("@lsp.typemod.function.defaultLibrary", "@function.builtin")
  Group.link("@lsp.typemod.operator.injected", "@operator")
  Group.link("@lsp.typemod.variable.defaultLibrary", "@variable.builtin")
  Group.link("@lsp.typemod.string.injected", "@string")
  Group.link("@lsp.typemod.variable.injected", "@variable")
end

return M
