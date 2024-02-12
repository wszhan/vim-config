local plugins = {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, 
    config = true,
  },

  -- -- LSP Setup Start -- --
  --- Use the two plugins below if you want to manage the language servers from neovim
  {'williamboman/mason.nvim'}, -- check README for requirements
  {'williamboman/mason-lspconfig.nvim'},
  -- dependencies for LSP Zero to work
  {
    'VonHeikemen/lsp-zero.nvim', 
    branch = 'v3.x', 
    lazy = true, 
    config = false
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
    }
  },
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {'L3MON4D3/LuaSnip'}
    },
  },
  -- -- LSP Setup End -- --

  -- Pyright extension for neovim --
  {'fannheyward/coc-pyright'},
}

return plugins
