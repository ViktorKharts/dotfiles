return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- enable mason 
		mason.setup()

		mason_lspconfig.setup({
			-- list of defaul servers to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"gopls",
				"graphql",
				"angularls",
				"arduino_language_server",
				"bashls",
				"clangd",
				"dockerls",
				"docker_compose_language_service",
				"eslint",
				"jsonls",
				"marksman",
				"pyright",
				"sqls",
				"solang",
				"tflint",
				"yamlls",
				"zls"
			},
			-- auto-install servers we configured somewhere else (with lspconfig)
			automatic_installation = true, 
		})
	end,
}
