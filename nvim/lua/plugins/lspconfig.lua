local status_ok, lspconfig = pcall(require, 'lspconfig')
require('luasnip.loaders.from_vscode').lazy_load()

if not status_ok then
  return
end

local servers = {'tsserver', 'sumneko_lua', 'pyright'}

local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function(client, bufnr)
    vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })
  end
}

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

for _, server in ipairs(servers) do
  lspconfig[server].setup {}
end
