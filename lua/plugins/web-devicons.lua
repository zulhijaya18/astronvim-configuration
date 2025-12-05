---@type LazySpec
return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup {
      -- Change the default icon for a filetype
      override = {
        dart = {
          icon = "",
          color = "#0175C2",
          cterm_color = "4",
          name = "Dart",
        },
        lua = {
          icon = "",
          color = "#51a0cf",
          cterm_color = "33",
          name = "Lua",
        },
      },
      -- same as `override` but specifically for overrides by filename
      override_by_filename = {
        ["devicons"] = {
          icon = "",
          color = "#868686",
          cterm_color = "246",
          name = "Devicons",
        },
      },
      -- same as `override` but specifically for overrides by extension
      override_by_extension = {
        ["log"] = {
          icon = "󰌱",
          color = "#81e043",
          cterm_color = "112",
          name = "Log",
        },
      },
    }
  end,
}
