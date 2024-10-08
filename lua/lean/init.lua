local M = {}

function M.setup(opts)
  opts = opts or {}

  local colors = require("lean.colors") -- Load colors first
  require("lean.highlights").setup(opts) -- Then set up highlights

  vim.cmd("colorscheme lean")
end

function M.load()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "lean"

  M.setup({})
end

return M
