return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		keys = {
			-- Lazy
			{ "<leader><S-l>", "<cmd>Lazy<cr>", desc = "Plugin Manager" },

			-- Undo Tree
			{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle undo tree" },

			-- Oil
			{ "<leader>-", "<cmd>Oil<CR>", desc = "Open file tree" },

			-- Treesitter buffer reparse
			{ "<leader>tr", "<cmd>write | edit | TSBufEnable highlight<cr>", desc = "Treesitter buffer reparse" },
		},
	},
}
