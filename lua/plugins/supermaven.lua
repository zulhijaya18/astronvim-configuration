return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = "<C-a>", -- ubah dari Tab ke Ctrl+A
        clear_suggestion = "<C-]>",
        next_suggestion = "<C-]>",
      },
    }
  end,
}

