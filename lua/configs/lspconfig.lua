-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- local lspconfig = require "lspconfig"
--
-- -- EXAMPLE
local servers = { "html", "cssls", "basedpyright", "rust_analyzer", "terraformls", "ts_ls", "zls", "gopls" }

vim.lsp.config('gopls', {
  settings = {
    ['gopls'] = {
      gofumpt = true,
      codelenses = {
        gc_details = false,
        generate = true,
        regenerate_cgo = true,
        run_govulncheck = true,
        test = true,
        tidy = true,
        upgrade_dependency = true,
        vendor = true,
        vulncheck = true,
      },
      usePlaceholders = true,
      completeUnimported = true,
      staticcheck = true,
      directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
      semanticTokens = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        ignoredError = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    }
  }
})
vim.lsp.enable(servers)
-- vim.lsp.config('gopls', {
-- })
-- local nvlsp = require "nvchad.configs.lspconfig"
--
-- -- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   }
-- end
--
-- -- configuring single server, example: typescript
-- -- lspconfig.ts_ls.setup {
-- --   on_attach = nvlsp.on_attach,
-- --   on_init = nvlsp.on_init,
-- --   capabilities = nvlsp.capabilities,
-- -- }
--
-- lspconfig.gopls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   settings = {
--     gopls = {
--       gofumpt = true,
--       codelenses = {
--         gc_details = false,
--         generate = true,
--         regenerate_cgo = true,
--         run_govulncheck = true,
--         test = true,
--         tidy = true,
--         upgrade_dependency = true,
--         vendor = true,
--       },
--       hints = {
--         assignVariableTypes = true,
--         compositeLiteralFields = true,
--         compositeLiteralTypes = true,
--         constantValues = true,
--         functionTypeParameters = true,
--         parameterNames = true,
--         rangeVariableTypes = true,
--       },
--       usePlaceholders = true,
--       completeUnimported = true,
--       staticcheck = true,
--       directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
--       semanticTokens = true,
--     },
--   },
-- }
