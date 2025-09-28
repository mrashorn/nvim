-- ~/.config/nvim/lua/plugins/lsp.lua

--local lspconfig = vim.lsp.config or require("lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function on_attach(_, bufnr)
  local map = vim.keymap.set
  local opts = { buffer = bufnr }

  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "gT", vim.lsp.buf.type_definition, opts)
  map("n", "gi", vim.lsp.buf.implementation, opts)

  vim.diagnostic.config({
    virtual_text = { prefix = "- " },
    signs = true,
    underline = true,
    update_in_insert = false,
  }, bufnr)
end

lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig.clangd.setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    client.server_capabilities.semanticTokensProvider = nil
    on_attach(client, bufnr)
  end,
})

