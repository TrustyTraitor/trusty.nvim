vim.pack.add {
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  --'https://github.com/L3MON4D3/LuaSnip',
  'https://github.com/rafamadriz/friendly-snippets',
  'https://github.com/joerdav/templ.vim',
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
    'ols',
    'templ',
  },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('*', {
  capabilities = capabilities,
})

vim.lsp.config['html'] = {
  cmd = { 'vscode-html-language-server', '--stdio' },
}

vim.lsp.config['emmet_language_server'] = {
  filetypes = { 'templ', 'html' },
}

vim.lsp.config['qmlls'] = {
  cmd = { 'qmlls', '-E' },
  root_markers = { '.git/', 'shell.qml' },
}

vim.diagnostic.config { virtual_text = true }
