vim.keymap.set('n', '\\', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

vim.keymap.set('n', '<A-right>', '<Cmd>BufferNext<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<A-left>', '<Cmd>BufferPrevious<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader><down>', '<Cmd>BufferClose<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader><up>', '<Cmd>tabnew<CR>', { silent = true, noremap = true })

vim.keymap.set('n', '<C-up>', ':wincmd k<CR>', { desc = 'Move to above split' })
vim.keymap.set('n', '<C-down>', ':wincmd j<CR>', { desc = 'Move to above split' })
vim.keymap.set('n', '<C-left>', ':wincmd h<CR>', { desc = 'Move to above split' })
vim.keymap.set('n', '<C-right>', ':wincmd l<CR>', { desc = 'Move to above split' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('v', '<', '<gv', { desc = 'Unindent' })
vim.keymap.set('v', '>', '>gv', { desc = 'Unindent' })

vim.keymap.set('v', '<C-up>', ":m '<-2<CR>gv=gv", { desc = 'Move lines up' })
vim.keymap.set('v', '<C-down>', ":m '>+1<CR>gv=gv", { desc = 'Move lines down' })

vim.keymap.set('n', '<leader>q', function() MiniExtra.pickers.diagnostic() end, { desc = 'Diagnostic' })
vim.keymap.set('n', '<leader>sk', function() MiniExtra.pickers.keymaps() end, { desc = 'Search Keymaps' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')

vim.keymap.set('n', '<leader>w', ':write<CR>', { desc = 'Write to the file.' })
vim.keymap.set('n', '<leader>q', ':quit<CR>', { desc = 'Quit neovim' })
