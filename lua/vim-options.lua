-- Indentation options
vim.opt.shiftwidth = 2 -- steps/spaces for auto-indent
vim.opt.softtabstop = 2 -- number of spaces inserted/deleted for <tab>/<backspace>
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.tabstop = 4 -- actual tab character displays as 4 columns
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
vim.g.maplocalleader = "\\"

vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- could also be "■", "▶", "▎", "⮞", etc.
		spacing = 4,
		source = "if_many",
	},
	signs = true, -- signs in gutter (to the left of line numbers)
	underline = true, -- underline errors/warnings/etc.
	update_in_insert = false, -- update after leaving I mode
	severity_sort = true,
	float = {
		source = "always", -- show sources when hover with K
	},
})

