return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = vim.fn.argc(-1) == 0, -- load early when opening a file from cmd line
		opts_extend = { "ensure_installed" },
		auto_install = true,
		sync_install = false,
		opts = {
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			ensure_installed = {
				"ada",
				"angular",
				"bash",
				"c",
				"css",
				"go",
				"gleam",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"query",
				"rust",
				"sql",
				"terraform",
				"tmux",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
				"zig"
			},
		},
	},

}

