return {
	{
		"stevearc/oil.nvim",
		opts = {
			default_file_explorer = false,
			natural_order = false,
			view_options = {
				show_hidden = true,
				is_hidden_file = function(name, _)
					return vim.startswith(name, ".")
				end,
			}
		},
		-- Optional dependencies
		dependencies = { "echasnovski/mini.icons" },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	},
}

