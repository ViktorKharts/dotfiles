local M = {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
		{ "theHamsta/nvim-dap-virtual-text" },
		{ "nvim-telescope/telescope-dap.nvim" },
		{ "jbyuki/one-small-step-for-vimkind" },
		{ "mfussenegger/nvim-dap-python" },
		{ "leoluz/nvim-dap-go" },
	},
	opts = {
		setup = {
			osv = function(_, _)
				require("plugins.dap.lua").setup()
				require("plugins.dap.python").setup()
			end,
		},
	},
	config = function()
		local dap = require("dap")
		local ui = require("dapui")
		local keymap = vim.keymap.set

		require("dapui").setup()
		require("dap-go").setup()

		---@diagnostic disable-next-line: missing-fields
		require("nvim-dap-virtual-text").setup({
			commented = true,
		})

		keymap("n", "<space>b", dap.toggle_breakpoint)
		keymap("n", "<space>gb", dap.run_to_cursor)

		-- Eval var under cursor
		keymap("n", "<space>?", function()
			---@diagnostic disable-next-line: missing-fields
			require("dapui").eval(nil, { enter = true })
		end)

		keymap("n", "<F1>", dap.continue)
		keymap("n", "<F2>", dap.step_into)
		keymap("n", "<F3>", dap.step_over)
		keymap("n", "<F4>", dap.step_out)
		keymap("n", "<F5>", dap.step_back)
		keymap("n", "<F12>", dap.close)
		keymap("n", "<F13>", dap.restart)

		dap.listeners.after.event_initialized.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.attach.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			ui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			ui.close()
		end
	end,
}

return M
