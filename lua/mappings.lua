require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>qq", ":qa!<cr>")
map("n", "<leader><F5>", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
map("n", "<leader>i", function ()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inlay hints" })
map("n", "<leader>cl", function ()
  vim.lsp.codelens.refresh()
end, { desc = "Refresh CodeLens" })
map("n", "<leader>clr", function ()
  vim.lsp.codelens.run()
end, { desc = "Run CodeLens" })
map("n", "grc", vim.lsp.buf.incoming_calls, { desc = "vim.lsp.buf.incoming_calls" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
