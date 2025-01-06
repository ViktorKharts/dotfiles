local M = {}

function M.setup()
	local dap = require("dap")
	-- dap.configurations.lua = {
	-- 	{
	-- 		type = "nlua",
	-- 		request = "attach",
	-- 		name = "Attach to running Neovim instance",
	-- 		host = function()
	-- 			local value = vim.fn.input("Host [127.0.0.1]: ")
	-- 			if value ~= "" then
	-- 				return value
	-- 			end
	-- 			return "127.0.0.1"
	-- 		end,
	-- 		port = function()
	-- 			local val = tonumber(vim.fn.input("Port: ", "8086"))
	-- 			assert(val, "Please provide a port number")
	-- 			return val
	-- 		end,
	-- 	},
	-- }
	--
	-- dap.adapters.nlua = function(callback, config)
	-- 	callback({ type = "server", host = config.host, port = config.port })
	-- end

	local microsoft_debugger_path = vim.fn.stdpath("data")
		.. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js"
	local firefox_debugger_path = vim.fn.stdpath("data")
		.. "/mason/packages/firefox-debug-adapter/dist/adapter.bundle.js"

	dap.adapters["pwa-node"] = {
		type = "server",
		host = "localhost",
		port = "${port}",
		executable = {
			command = "node",
			args = { microsoft_debugger_path, "${port}" },
		},
	}

	-- dap.adapters["pwa-chrome"] = {
	-- 	type = "executable",
	-- 	command = "node",
	-- 	args = { js_debugger_path },
	-- }

	dap.configurations.javascript = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = "${workspaceFolder}",
		},
	}

	dap.configurations.typescript = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = "${workspaceFolder}",
		},
	}

	-- dap.configurations.javascript = {
	-- 	{
	-- 		name = "Attach Chrom JS",
	-- 		type = "pwa-chrome",
	-- 		request = "attach",
	-- 		program = "${file}",
	-- 		cwd = vim.fn.getcwd(),
	-- 		sourceMaps = true,
	-- 		protocol = "inspector",
	-- 		port = 9222,
	-- 		webRoot = "${workspaceFolder}",
	-- 	},
	-- }
	--
	-- dap.configurations.typescript = {
	-- 	{
	-- 		name = "Laucn Chrome TS",
	-- 		type = "pwa-chrome",
	-- 		request = "launch",
	-- 		program = "${file}",
	-- 		cwd = vim.fn.getcwd(),
	-- 		sourceMaps = true,
	-- 		protocol = "inspector",
	-- 		port = 9222,
	-- 		webRoot = "${workspaceFolder}",
	-- 		skipFiles = { "<node_internals>/**/*.js" },
	-- 		userDataDir = false,
	-- 	},
	-- }

	dap.adapters.firefox = {
		type = "executable",
		command = "node",
		args = { firefox_debugger_path },
	}

	dap.configurations.typescript = {
		{
			name = "Debug with Firefox",
			type = "firefox",
			request = "launch",
			reAttach = true,
			url = "http://localhost:4200",
			webRoot = "${workspaceFolder}",
			firefoxExecutable = "/usr/bin/firefox",
		},
	}

	-- for _, lang in ipairs({ "javascript", "typescript", "svelte", "angular" }) do
	-- 	dap.configurations[lang] = {
	-- 		{
	-- 			type = "pwa-node",
	-- 			request = "launch",
	-- 			name = "Node: Launch file",
	-- 			program = "${file}",
	-- 			cwd = "${workspaceFolder}",
	-- 			runtimeExecutable = "node",
	-- 		},
	-- 		{
	-- 			type = "pwa-node",
	-- 			request = "attach",
	-- 			name = "Node: Attach",
	-- 			processId = require("dap.utils").pick_process,
	-- 			cwd = "${workspaceFolder}",
	-- 		},
	-- 		{
	-- 			type = "pwa-chrome",
	-- 			request = "launch",
	-- 			name = "Chrome: Launch & Debug",
	-- 			url = function()
	-- 				local co = coroutine.running()
	-- 				return coroutine.create(function()
	-- 					vim.ui.input({
	-- 						prompt = "Enter URL: ",
	-- 						default = "http://localhost:3000",
	-- 					}, function(url)
	-- 						if url == nil or url == "" then
	-- 							return
	-- 						else
	-- 							coroutine.resume(co, url)
	-- 						end
	-- 					end)
	-- 				end)
	-- 			end,
	-- 			webRoot = "${workspaceFolder}",
	-- 			skipFiles = { "<node_internals>/**/*.js" },
	-- 			protocol = "inspector",
	-- 			sourceMaps = true,
	-- 			userDataDir = false,
	-- 		},
	-- 		{
	-- 			type = "pwa-chrome",
	-- 			name = "Chrome: Attach - Remote Debugging",
	-- 			request = "attach",
	-- 			program = "${file}",
	-- 			cwd = vim.fn.getcwd(),
	-- 			sourceMaps = true,
	-- 			protocol = "inspector",
	-- 			port = 9222,
	-- 			webRoot = "${workspaceFolder}",
	-- 		},
	-- 		{
	-- 			type = "pwa-chrome",
	-- 			request = "launch",
	-- 			name = 'Start Chrome with "localhost"',
	-- 			url = "http://localhost:3000",
	-- 			webRoot = "${workspaceFolder}",
	-- 			userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir",
	-- 		},
	-- 		{
	-- 			type = "pwa-chrome",
	-- 			name = "Chrome: Launch",
	-- 			request = "launch",
	-- 			url = "http://localhost:3000",
	-- 		},
	-- 		{
	-- 			-- use nvim-dap-vscode-js's pwa-chrome debug adapter
	-- 			type = "pwa-chrome",
	-- 			request = "launch",
	-- 			-- name of the debug action
	-- 			name = "Launch Chrome to debug client side code",
	-- 			-- default vite dev server url
	-- 			url = "http://localhost:4200",
	-- 			-- for TypeScript/Svelte
	-- 			sourceMaps = true,
	-- 			webRoot = "${workspaceFolder}/src",
	-- 			protocol = "inspector",
	-- 			port = 9222,
	-- 			-- skip files from vite's hmr
	-- 			skipFiles = { "**/node_modules/**/*", "**/@vite/*", "**/src/client/*", "**/src/*" },
	-- 		},
	-- 		{
	-- 			-- use nvim-dap-vscode-js's pwa-node debug adapter
	-- 			type = "pwa-node",
	-- 			-- launch a new process to attach the debugger to
	-- 			request = "launch",
	-- 			-- name of the debug action you have to select for this config
	-- 			name = "Launch file in new node process",
	-- 			-- launch current file
	-- 			program = "${file}",
	-- 			cwd = "${workspaceFolder}",
	-- 			port = "3000",
	-- 		},
	-- 		-- Divider for the launch.json derived configs
	-- 		{
	-- 			name = "----- ↓ launch.json configs ↓ -----",
	-- 			type = "",
	-- 			request = "launch",
	-- 		},
	-- 	}
	-- end
end

return M
