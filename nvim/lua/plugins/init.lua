return {
	"nvim-tree/nvim-web-devicons",
	"mfussenegger/nvim-lint",
	"MunifTanjim/prettier.nvim",
	"williamboman/mason.nvim",
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
		event = "InsertEnter",
	},
	{
		"mbbill/undotree",
		event = "VeryLazy",
	},
}
