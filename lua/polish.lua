-- Polish config - runs after all plugins loaded

-- Make entire UI transparent
local transparent_hl = {
  "Normal",
  "StatusLine",
  "StatusLineNC",
  "TabLine",
  "TabLineFill",
  "TabLineSel",
  "LineNr",
  "SignColumn",
  "WinSeparator",
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "NeoTreeEndOfBuffer",
  "NeoTreeWinSeparator",
  "NeoTreeTabActive",
  "NeoTreeTabInactive",
  "NeoTreeTitleBar",
  "NeoTreeFloatBorder",
  "FloatBorder",
  "NeoTree",
  "WinBar",
  "WinBarNC",
  "Breadcrumb",
  "BreadcrumbBackground",
  "CmpItemAbbrMatch",
  "CmpItemAbbrMatchFuzzy",
}
for _, group in ipairs(transparent_hl) do
  local hl = vim.api.nvim_get_hl(0, { name = group })
  hl.bg = nil
  hl.ctermbg = nil
  vim.api.nvim_set_hl(0, group, hl)
end

local last_key = {}

-- Double tap j untuk move 6 lines
vim.keymap.set("n", "j", function()
  local count = vim.v.count1
  local now = vim.uv.now()
  if last_key.j and (now - last_key.j) < 100 then
    vim.cmd("normal! " .. (count * 7) .. "j")
    last_key.j = nil
  else
    vim.cmd("normal! " .. count .. "j")
    last_key.j = now
  end
end, { noremap = true, silent = true })

-- Double tap k untuk move 6 lines
vim.keymap.set("n", "k", function()
  local count = vim.v.count1
  local now = vim.uv.now()
  if last_key.k and (now - last_key.k) < 100 then
    vim.cmd("normal! " .. (count * 7) .. "k")
    last_key.k = nil
  else
    vim.cmd("normal! " .. count .. "k")
    last_key.k = now
  end
end, { noremap = true, silent = true })
