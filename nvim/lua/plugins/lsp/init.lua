return {
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
    dependencies = {
			{ "folke/neoconf.nvim", cmd = "Neoconf", config = true },
			{ "j-hui/fidget.nvim", config = true },
			{ "smjonas/inc-rename.nvim", config = true, opts = { input_buffer_type = "dressing" } },

      "folke/lazydev.nvim",

			{ "mason-org/mason.nvim", version = "^1.0.0" },
			{ "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },

			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lsp-signature-help",
		},
		config = function(plugin)
			require("plugins.lsp.servers").setup(plugin)
		end,
	},
	{
		"mason-org/mason.nvim",
		cmd = "Mason",
		keys = { { "<leader>m", "<cmd>Mason<cr>", desc = "Mason" } },
		ensure_installed = {
			"stylua",
			"ruff",
			"debugpy",
		},
		config = function(plugin)
			require("mason").setup()
			local mr = require("mason-registry")
			for _, tool in ipairs(plugin.ensure_installed) do
				if not mr.is_installed(tool) then
				  local p = mr.get_package(tool)
					p:install()
				end
			end
		end,
	},
}
