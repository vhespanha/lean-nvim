local M = {}

function M.setup(opts)
  opts = opts or {}

  -- Load base highlights
  require("lean.highlights.editor").setup()
  require("lean.highlights.syntax").setup()
  require("lean.highlights.term").setup()

  -- Load module highlights
  require("lean.highlights.modules.cmp").setup()
  require("lean.highlights.modules.dapui").setup()
  require("lean.highlights.modules.diagnostic").setup({ background = false })
  require("lean.highlights.modules.diffchar").setup()
  require("lean.highlights.modules.fidget").setup()
  require("lean.highlights.modules.gitgutter").setup()
  require("lean.highlights.modules.gitsigns").setup()
  require("lean.highlights.modules.lsp_semantic_tokens").setup()
  require("lean.highlights.modules.lsp_trouble").setup()
  require("lean.highlights.modules.mini").setup()
  require("lean.highlights.modules.native_lsp").setup({ background = false })
  require("lean.highlights.modules.neogit").setup()
  require("lean.highlights.modules.neotree").setup()
  require("lean.highlights.modules.noice").setup()
  require("lean.highlights.modules.notify").setup()
  require("lean.highlights.modules.telescope").setup()
  require("lean.highlights.modules.treesitter").setup()
  require("lean.highlights.modules.whichkey").setup()

  -- Set up Lualine theme
  if opts.lualine then
    require("lean.lualine_theme").setup()
  end
end

return M
