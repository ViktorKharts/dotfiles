return {
	{
		"airblade/vim-gitgutter",
		event = "VeryLazy",
		config = function()
			local keymap = vim.keymap.set

			keymap("n", "<C-g>tg", "<cmd>GitGutterToggle<cr>", { desc = "Toggle Gitgutter" })
		end,
	},
	{
		"f-person/git-blame.nvim",
		opts = {
			enabled = true,
			message_template = "• <author> • <date> • <summary> •",
			date_format = "%m-%d-%Y %H:%M:%S",
			virtual_text_column = 1,
		},
		keys = {
			{ "<C-g>tb", "<cmd>GitBlameToggle<cr>", desc = "Toggle GitBlame" },
			{ "<C-g>c", "<cmd>GitBlameCopyCommitURL<cr>", desc = "Copy Commit URL" },
			{ "<C-g>f", "<cmd>GitBlameCopyFileURL<cr>", desc = "Copy File URL" },
			{ "<C-g>s", "<cmd>GitBlameCopySHA<cr>", desc = "Copy Commit SHA" },
		},
	},
	{
		"ruifm/gitlinker.nvim",
		event = "BufReadPre",
		opts = {
			mappings = "<C-g>l",
		},
	},
}
