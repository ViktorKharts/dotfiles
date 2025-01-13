local M = {}

function M.setup()
	require("dap-python").setup("python", {})
	local dap = require("dap")
	dap.configurations.python = {
		{
			type = "debugpy",
			request = "attach",
			connect = {
				port = 5678,
				host = "127.0.0.1",
			},
			mode = "remote",
			name = "container attach debug",
			cwd = vim.fn.getcwd(),
			pathmappings = {
				{
					localroot = function()
						return vim.fn.input("local code folder > ", vim.fn.getcwd(), "file")
					end,
					remoteroot = function()
						return vim.fn.input("container code folder > ", "/", "file")
					end,
				},
			},
		},
	}

	dap.adapters.debugpy = function(callback, config)
		callback({ type = "server", host = config.connect.host, port = config.connect.port })
	end
end

return M
