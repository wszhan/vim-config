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

--
-- Lua LSP
--
local lua_opts = lsp_zero.nvim_lua_ls({
  single_file_support = false,
  on_attach = function(client, bufnr)
    -- print('hello world') -- example & placeholder
  end,
})

require('lspconfig').lua_ls.setup(lua_opts)

-- key bindings start --
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
-- 
-- cmp.setup({
--   mapping = cmp.mapping.preset.insert({
--     -- `Enter` key to confirm completion
--     -- ['<CR>'] = cmp.mapping.confirm({select = false}),
-- 
--     -- Ctrl+Space to trigger completion menu
--     ['<C-Space>'] = cmp.mapping.complete(),
-- 
--     -- Navigate between snippet placeholder
--     ['<C-f>'] = cmp_action.luasnip_jump_forward(),
--     ['<C-b>'] = cmp_action.luasnip_jump_backward(),
-- 
--     -- Scroll up and down in the completion documentation
--     ['<C-u>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-d>'] = cmp.mapping.scroll_docs(4),
--   })
-- })
-- key bindings end --


-- key bindings 2 start --
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)
-- key bindings 2 end --

