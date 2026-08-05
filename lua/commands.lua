vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    local mode = vim.api.nvim_get_mode().mode
    local filetype = vim.bo.filetype

    local active_lsp = vim.lsp.get_clients { buffer = vim.api.nvim_get_current_buf() }
    local lsp_name = ''
    if #active_lsp > 0 then lsp_name = active_lsp[1].name end

    if #active_lsp > 0 then
      -- The gdscript lsp is configured by the godotdev plugin so it doesnt seem to integrate like the rest of the LSPs. The godotdev plugin seems to autorun the format without this.
      if lsp_name ~= 'gdscript' and vim.bo.modified == true and mode == 'n' and filetype ~= 'oil' then
        vim.cmd 'lua vim.lsp.buf.format()'
      else
      end
    end
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  callback = MiniSnippets.session.stop,
})
