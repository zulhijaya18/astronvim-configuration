if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "markdown",
      "markdown_inline",
      "css",
      "scss",
      "javascript",
      "typescript",
      "tsx",
      "html",
      "json",
      "yaml",
      "toml",
      "java",
      "python",
      "php",
      "make",
      "dart",
      "go",
      "sh",
      "sql",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
