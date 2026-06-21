vim.pack.add {
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/romgrk/barbar.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/lewis6991/gitsigns.nvim',
  {
    src = 'https://github.com/catppuccin/nvim',
    name = 'catppuccin',
  },
  'https://github.com/folke/todo-comments.nvim',
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/windwp/nvim-autopairs',
}

require('oil').setup {
  keys = {
    { '\\', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
  default_file_explorer = true,
}

require('todo-comments').setup()
require('nvim-autopairs').setup()

require('mini.statusline').setup()
require('mini.cmdline').setup()
require('mini.surround').setup()
require('mini.pick').setup()

MiniExtra = require 'mini.extra'
MiniExtra.setup() -- TODO: More to do here.

require('mini.completion').setup {
  lsp_completion = {
    auto_setup = true,
  },
}

require('catppuccin').setup {
  flavor = 'mocha',
}
