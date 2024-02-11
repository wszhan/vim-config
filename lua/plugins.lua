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
}

return plugins
