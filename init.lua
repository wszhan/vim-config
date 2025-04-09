-- require('plugins')


-- init lazy.nvim
-- explanations: https://lsp-zero.netlify.app/v3.x/tutorial.html#install-the-plugin-manager
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

require("vim-options")
require("lazy").setup(
  -- require("lua.plugins"),
  "plugins"
  -- {} -- opts placeholder
)


-- require('lsp')

require('plug-configs')

