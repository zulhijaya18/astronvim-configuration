-- Polish config - runs after all plugins loaded

local last_key = {}

-- Double tap j untuk move 6 lines
vim.keymap.set("n", "j", function()
  local count = vim.v.count1
  local now = vim.uv.now()
  if last_key.j and (now - last_key.j) < 140 then
    vim.cmd("normal! " .. (count * 5) .. "j")
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
  if last_key.k and (now - last_key.k) < 140 then
    vim.cmd("normal! " .. (count * 5) .. "k")
    last_key.k = nil
  else
    vim.cmd("normal! " .. count .. "k")
    last_key.k = now
  end
end, { noremap = true, silent = true })
