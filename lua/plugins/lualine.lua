return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- TODO: install this dependency
  config = function()
    require("lualine").setup({
      options = {
        theme = "dracula",
      }
    })
  end
}

