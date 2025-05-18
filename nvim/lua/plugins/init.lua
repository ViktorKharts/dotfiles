return {
	"nvim-tree/nvim-web-devicons",
	"mfussenegger/nvim-lint",
	{ "mason-org/mason.nvim", version = "^1.0.0" },
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		lazy = false,
	},
	{
		"mbbill/undotree",
		event = "VeryLazy",
	},
}
