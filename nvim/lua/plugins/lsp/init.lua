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
		version = "^1.0.0",
		cmd = "Mason",
		keys = { { "<leader><S-m>", "<cmd>Mason<cr>", desc = "Mason" } },
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
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				html = { "prettier" },
				htmlangular = { "prettier" },
				go = { "goimports", "gofmt" },
				markdown = { "markdownlint", "prettier", stop_after_first = true },
				json = { "prettier" },
				yaml = { "prettier" },
				sql = { "sql-formatter" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = { timeout_ms = 500 },
			formatters = {
				shfmt = {
					prepend_args = { "-i", "2" },
				},
			},
		},
		keys = {
			{
				"<leader><S-f>",
				function()
					require("conform").format({ async = true })
				end,
				desc = "Format buffer",
				mode = "n",
			},
		},
	},
	{
		"mfussenegger/nvim-lint",
		event = "BufReadPre",
		config = function()
			require("lint").linters_by_ft = {
				typescript = { "eslint_d" },
				javascript = { "eslint_d" },
				htmlangular = { "eslint_d" },
				html = { "htmlhint " },
				markdown = { "markdownlint" },
				jsx = { "ast_grep " },
			}
		end,
	},
}
