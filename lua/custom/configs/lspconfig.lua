local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

lspconfig.terraformls.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.jsonls.setup({
  capabilities = capabilities,
})

lspconfig.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {enabled = false}
      }
    }
  }
})

lspconfig.dockerls.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end
})
