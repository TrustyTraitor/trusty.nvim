vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- APPEARANCE
vim.opt.termguicolors = true
vim.g.have_nerd_font = true
vim.o.cmdheight = 0
vim.o.winborder = 'rounded'
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  callback = function() vim.hl.on_yank() end,
})
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.modeline = true

vim.opt.shell = 'fish'
vim.o.mouse = 'a'

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
vim.o.breakindent = true

vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.swapfile = false

vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 8

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
