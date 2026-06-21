vim.pack.add {
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/L3MON4D3/LuaSnip',
}

require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    'neocmake',
    'slangd',
    'just',
    'clangd',
    'gopls',
    'rust_analyzer',
    'bashls',
    'fish_lsp',
    'html',
    'jdtls',
    'csharp_ls',
    'pyright',
    'sqlls',
    'qmlls',
    'ts_ls',
    'emmet_language_server',
    'stylua',
    'lua_ls',
  },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config['qmlls'] = {
  cmd = { 'qmlls', '-E' },
  root_markers = { '.git/', 'shell.qml' },
}

vim.lsp.config['neocmake'] = {
  capabilities = capabilities,
}

vim.diagnostic.config { virtual_text = true }
