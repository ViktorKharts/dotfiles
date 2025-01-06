local M = {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
		{ "theHamsta/nvim-dap-virtual-text" },
		{ "nvim-telescope/telescope-dap.nvim" },

		{ "jbyuki/one-small-step-for-vimkind" },
		{ "mfussenegger/nvim-dap-python" },
		{ "leoluz/nvim-dap-go" },

		{ "Joakker/lua-json5", build = "./install.sh" }, -- read and install contents of .vscode/launch.json
	},
	opts = {
		setup = {
			osv = function(_, _)
				require("plugins.dap.lua").setup()
			end,
			js = function(_, _)
				require("plugins.dap.js").setup()
			end,
		},
	},
	config = function(plugin, opts)
		local dap = require("dap")
		local ui = require("dapui")
		local keymap = vim.keymap.set

		require("dapui").setup()
		require("dap-go").setup()
		require("dap-python").setup("python", {})

		---@diagnostic disable-next-line: missing-fields
		require("nvim-dap-virtual-text").setup({
			commented = true,
		})

		keymap("n", "<space>b", dap.toggle_breakpoint)
		keymap("n", "<F1>", dap.continue)
		keymap("n", "<F2>", dap.step_into)
		keymap("n", "<F3>", dap.step_over)
		keymap("n", "<F4>", dap.step_out)
		keymap("n", "<F5>", dap.step_back)
		keymap("n", "<F11>", ui.close)
		keymap("n", "<F12>", dap.restart)

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

		for k, _ in pairs(opts.setup) do
			opts.setup[k](plugin, opts)
		end
	end,
}

return M
