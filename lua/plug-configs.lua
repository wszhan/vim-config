-- key bindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex) -- vim file explorer

local builtin = require('telescope.builtin')
local keybindings_opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>ff', builtin.find_files, keybindings_opts)
vim.keymap.set('n', '<leader>gs', builtin.grep_string, keybindings_opts) -- dependency: ripgrep via Homebrew
vim.keymap.set('n', '<leader>vh', builtin.help_tags, keybindings_opts)
vim.keymap.set('n', '<leader>gf', builtin.git_files, keybindings_opts)

