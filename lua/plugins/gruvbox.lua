return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    -- color scheme
    vim.cmd.colorscheme("gruvbox")
    vim.o.background = "dark" -- or "light" for light mode
    vim.opt.termguicolors = true
  end,
  -- config = true,
}

