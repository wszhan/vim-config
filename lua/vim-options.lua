-- Indentation options
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- Features
-- vim.opt.compatible = false
-- vim.opt.filetype = "on"
-- vim.opt.syntax = "on"

-- When opening a new line, keep the same indent as the line you're currently on.
-- vim.opt.autoindent = true

-- Display line numbers on the left
-- Hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.g.mapleader = " "

vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- could also be "■", "▶", "▎", "⮞", etc.
		spacing = 4,
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

