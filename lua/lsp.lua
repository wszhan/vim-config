local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions

  -- enable these keybindings only when you have a language server active in the current file
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- setup the language servers

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})
