return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.completion.spell,
				-- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
				null_ls.builtins.formatting.clang_format,

				-- python: it seems none-ls removed builtin support for ruff; leave it here for now
				-- null_ls.builtins.formatting.ruff.with({
				-- 	command = "ruff",
				-- 	args = {
				-- 		"format", -- use ruff's format engine
				-- 		"--stdin-filename",
				-- 		"$FILENAME",
				-- 		"-",
				-- 	},
				-- }),
				-- null_ls.builtins.diagnostics.ruff.with({
				-- 	command = "ruff",
				-- 	args = {
				-- 		"--quiet", -- hide unncessary output
				-- 		"--stdin-filename",
				-- 		"$FILENAME", -- tell ruff the actual filename
				-- 		"-",
				-- 	}, -- read code from stdin since null-ls feeds the rile to ruff this way
				-- }),
				-- null_ls.builtins.formatting.black,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
