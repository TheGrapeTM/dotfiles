local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

require'lspconfig'.tsserver.setup{
    on_attach=on_attach,
    capabilities = capabilities,
}
require'lspconfig'.clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = function() return vim.loop.cwd() end,
}

require'lspconfig'.jedi_language_server.setup{
    on_attach=on_attach,
    capabilities = capabilities,
}
require'lspconfig'.html.setup{
    on_attach=on_attach,
    capabilities = capabilities,
}

local opts = {
    -- whether to highlight the currently hovered symbol
    -- disable if your cpu usage is higher than you want it
    -- or you just hate the highlight
    -- default: true
    highlight_hovered_item = true,

    -- whether to show outline guides
    -- default: true
    show_guides = true,
}

require('symbols-outline').setup(opts)
 
