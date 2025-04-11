local plugins = {

	-- -- LSP Setup Start -- --
	--- Use the two plugins below if you want to manage the language servers from neovim
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	}, -- check README for requirements
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
                    "cmake",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig", -- https://github.com/neovim/nvim-lspconfig
		lazy = false,
		config = function()
			-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
                -- cmd = {'clangd', '--log=verbose', '--pretty'}, -- Use LspLog to inspect debug log
			})
			lspconfig.cmake.setup({
				capabilities = capabilities,
			})
		end,
	},
	-- dependencies for LSP Zero to work
	--- {
	---   'VonHeikemen/lsp-zero.nvim',
	---   branch = 'v3.x',
	---   lazy = true,
	---   config = false
	--- },
	--- {
	---   'neovim/nvim-lspconfig',
	---   dependencies = {
	---     { 'hrsh7th/cmp-nvim-lsp' },
	---   }
	--- },
	-- Autocompletion
	-- {
	--   'hrsh7th/nvim-cmp',
	--   dependencies = {
	--     { 'L3MON4D3/LuaSnip' }
	--   },
	-- },
	-- -- LSP Setup End -- --

	-- Pyright extension for neovim --
	-- { 'fannheyward/coc-pyright' },
}

return plugins
