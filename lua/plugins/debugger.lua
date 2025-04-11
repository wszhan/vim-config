return {
	{
		"rcarriga/nvim-dap-ui",

		dependencies = {
			"nvim-neotest/nvim-nio",
		},
	},
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<leader>dc", dap.continue, {})

			local dapui = require("dapui")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
	{
		"tomblind/local-lua-debugger-vscode", -- lua debugger
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		config = function()
			local dap = require("dap")
			dap.adapters["local-lua"] = {
				type = "executable",
				command = "node",
				args = {
					"/absolute/path/to/local-lua-debugger-vscode/extension/debugAdapter.js",
				},
				enrich_config = function(config, on_config)
					if not config["extensionPath"] then
						local c = vim.deepcopy(config)
						-- 💀 If this is missing or wrong you'll see
						-- "module 'lldebugger' not found" errors in the dap-repl when trying to launch a debug session
						c.extensionPath = "/absolute/path/to/local-lua-debugger-vscode/"
						on_config(c)
					else
						on_config(config)
					end
				end,
			}
		end,
	},
}
