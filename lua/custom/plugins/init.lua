-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { 'romgrk/barbar.nvim', opts = {} },
  {
    'stevearc/oil.nvim',
    keys = {
      { '\\', '<CMD>Oil<CR>', desc = 'Open parent directory' },
    },
    opts = {
      default_file_explorer = true,
    },
    lazy = false,
  },
}
