---@type LazySpec
return {
  "mellow-theme/mellow.nvim",
  priority = 1000,
  init = function()
    vim.g.mellow_transparent = true
  end,
}
