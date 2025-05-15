return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate", -- update parsers to latest stable versions
    version = "*",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "cpp", "python", "lua", "javascript", "html", "markdown", "markdown_inline"}, -- install during setup
			auto_install = true, -- auto-install parsers for current opened file if not specified above
			sync_install = false, -- async install; avoid blocking
			highlight = { enable = true }, -- syntax highlighting
			indent = { enable = true }, -- smart indentation
		})
	end,
}

