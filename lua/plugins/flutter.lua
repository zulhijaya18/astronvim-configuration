return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup {
        lsp = {
          capabilities = require("astrolsp").capabilities,
          on_attach = require("astrolsp").on_attach,
          settings = {
            dart = {
              enableSnippets = true,
            },
          },
        },
      }
    end
  }
}
