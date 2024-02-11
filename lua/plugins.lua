local plugins = {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    -- color scheme
    -- https://github.com/ellisonleao/gruvbox.nvim
    "ellisonleao/gruvbox.nvim",
    priority = 1000, 
    config = true,
  },
  {
    -- also dependency for telescope's finder/preview
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
}

return plugins
