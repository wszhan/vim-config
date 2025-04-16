return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
				width = math.floor(vim.o.columns * 0.8),
				height = math.floor(vim.o.lines * 0.8),
				winblend = 0, -- transparency
			},
			start_in_insert = true,
			persist_size = false,
			shade_terminals = false, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
      close_on_exit = true, -- close the terminal window when the process exits
		})
	end,
}
