require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
local group_cdpwd = vim.api.nvim_create_augroup("group_cdpwd", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
  group = group_cdpwd,
  pattern = "*",
  callback = function()
    vim.api.nvim_set_current_dir(vim.fn.expand "%:p:h")
  end,
})
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.server_capabilities.codeLensProvider then
      vim.api.nvim_create_autocmd({ 'BufEnter', 'CursorHold', 'InsertLeave' }, {
        buffer = args.buf,
        callback = vim.lsp.codelens.refresh,
      })
    end
  end,
})
