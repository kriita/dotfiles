-- Setup copilot
--require("copilot").setup()

--require("copilot_cmp").setup {
--  method = "getCompletionsCycling",
--}

vim.lsp.handlers['textDocument/hover'] = function(err, result, ctx, config)
  config = config or {}
  config.border = 'rounded'
  return vim.lsp.handlers.hover(err, result, ctx, config)
end

-- Set up Mason
require("mason").setup()
require("mason-lspconfig").setup()

-- Set up lsp
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = { 'docker_compose_language_service', 'dockerls', 'jsonls', 'pyright', 'yamlls' }

for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    capabilities = capabilities,
  })
  vim.lsp.enable(server)
end

local cmp = require('cmp')

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }) -- Accept currently selected item. Set select to 'false' to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    --      { name = 'copilot' },
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip' },
  },
  {
    { name = 'buffer' },
  }),
}

