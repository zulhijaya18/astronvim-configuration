---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 50,
    },
    use_image_in_layout = false,
    enable_diagnostics = false,
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.defer_fn(function()
      -- Remove all backgrounds from neotree highlight groups
      local all_hl_groups = vim.fn.getcompletion("", "highlight")
      for _, group in ipairs(all_hl_groups) do
        if group:match("^NeoTree") or group:match("^TabLine") then
          local hl = vim.api.nvim_get_hl(0, { name = group })
          hl.bg = nil
          hl.ctermbg = nil
          pcall(vim.api.nvim_set_hl, 0, group, hl)
        end
      end
    end, 100)
  end,
}
