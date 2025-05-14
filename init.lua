
-- init lazy.nvim
-- explanations: https://lsp-zero.netlify.app/v3.x/tutorial.html#install-the-plugin-manager
-- vim.fn.stdpath("data"): standard directory of user data
-- On MacOS/Linux: ~/.local/share/nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    -- print message in the command area (bottom of the screen)
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {}) -- true as history meaning adding message to message history
    -- force input so that the user can see the message, instead of
    -- exiting immediately
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins explicitly
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- Example: colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },

  -- automatically check for plugin updates
  checker = { enabled = true },
})

