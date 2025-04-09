local plugins = {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
    -- config = true,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "cpp", "python", "lua", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end,
   },

  -- -- LSP Setup Start -- --
  --- Use the two plugins below if you want to manage the language servers from neovim
  --- { 'williamboman/mason.nvim' }, -- check README for requirements
  --- { 'williamboman/mason-lspconfig.nvim' },
  -- dependencies for LSP Zero to work
  --- {
  ---   'VonHeikemen/lsp-zero.nvim',
  ---   branch = 'v3.x',
  ---   lazy = true,
  ---   config = false
  --- },
  --- {
  ---   'neovim/nvim-lspconfig',
  ---   dependencies = {
  ---     { 'hrsh7th/cmp-nvim-lsp' },
  ---   }
  --- },
  -- Autocompletion
  -- {
  --   'hrsh7th/nvim-cmp',
  --   dependencies = {
  --     { 'L3MON4D3/LuaSnip' }
  --   },
  -- },
  -- -- LSP Setup End -- --

  -- Pyright extension for neovim --
  -- { 'fannheyward/coc-pyright' },
}

return plugins

