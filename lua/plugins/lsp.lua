local plugins = {

  -- -- LSP Setup Start -- --
  --- Use the two plugins below if you want to manage the language servers from neovim
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  }, -- check README for requirements
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "cmake",
          "ruff", -- install ruff through pip or brew
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig", -- https://github.com/neovim/nvim-lspconfig
    lazy = false,
    config = function()
      -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
        -- cmd = {'clangd', '--log=verbose', '--pretty'}, -- Use LspLog to inspect debug log
      })
      lspconfig.cmake.setup({
        capabilities = capabilities,
      })
      lspconfig.ruff.setup({
        capabilities = capabilities,
        cmd = { "ruff", "server" },
        filetypes = { "python" },
        root_dir = require("lspconfig.util").find_git_ancestor,
        on_attach = on_attach,
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'lca', vim.lsp.buf.code_action, {})
    end,
  },
}

return plugins

