-- Indentation options
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Features
vim.opt.compatible = false
vim.opt.filetype = "on"
vim.opt.syntax = "on"

-- When opening a new line, keep the same indent as the line you're currently on.
vim.opt.autoindent = true

-- Display line numbers on the left
vim.opt.number = true

-- Hybrid line numbers
vim.opt.relativenumber = true

-- init lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  require("plugins"),
  {} -- opts placeholder
)

-- color scheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme gruvbox")

require("plug-configs")

