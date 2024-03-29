local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'clangd',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

on_attach = function(client, bufnr)
  local maps = vim.keymap.set
  local opts_l = { silent = true, noremap = true }

  maps('n', 'K', vim.lsp.buf.hover, opts_l)
  maps({ 'n', 'i' }, '<C-k>', vim.lsp.buf.signature_help, opts_l)
end

lsp.setup()
