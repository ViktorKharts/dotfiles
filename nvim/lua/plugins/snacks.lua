return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			picker = { enabled = true },
			bigfile = { enabled = true, notfiy = true },
			indent = { enabled = true },
			notifier = { enabled = true, timeout = 3000 },
			statuscolumn = { enabled = true },
			animate = { enabled = true },
			scroll = { enabled = true },
		},
	},
}
