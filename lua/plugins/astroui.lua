-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "mellow",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        Normal = { bg = "NONE" },
        NormalNC = { bg = "NONE" },
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        SignColumn = { bg = "NONE" },
        MsgArea = { bg = "NONE" },
        ModeMsg = { bg = "NONE" },
        MsgSeparator = { bg = "NONE" },
        SpellBad = { bg = "NONE" },
        SpellCap = { bg = "NONE" },
        SpellLocal = { bg = "NONE" },
        SpellRare = { bg = "NONE" },
        StatusLine = { bg = "NONE" },
        StatusLineNC = { bg = "NONE" },
        TabLine = { bg = "NONE" },
        TabLineFill = { bg = "NONE" },
        TabLineSel = { bg = "NONE" },
        LineNr = { bg = "NONE" },
        CursorLineNr = { bg = "NONE" },
        Folded = { bg = "NONE" },
        FoldColumn = { bg = "NONE" },
        VertSplit = { bg = "NONE" },
        WinSeparator = { bg = "NONE" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        Normal = { bg = "NONE" },
        NormalNC = { bg = "NONE" },
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        SignColumn = { bg = "NONE" },
        MsgArea = { bg = "NONE" },
        ModeMsg = { bg = "NONE" },
        MsgSeparator = { bg = "NONE" },
        SpellBad = { bg = "NONE" },
        SpellCap = { bg = "NONE" },
        SpellLocal = { bg = "NONE" },
        SpellRare = { bg = "NONE" },
        StatusLine = { bg = "NONE" },
        StatusLineNC = { bg = "NONE" },
        TabLine = { bg = "NONE" },
        TabLineFill = { bg = "NONE" },
        TabLineSel = { bg = "NONE" },
        LineNr = { bg = "NONE" },
        CursorLineNr = { bg = "NONE" },
        Folded = { bg = "NONE" },
        FoldColumn = { bg = "NONE" },
        VertSplit = { bg = "NONE" },
        WinSeparator = { bg = "NONE" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
