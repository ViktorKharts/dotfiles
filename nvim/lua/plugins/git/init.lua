return {
	{
		"NeogitOrg/neogit",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = true,
	},
	{
		"airblade/vim-gitgutter",
		event = "VeryLazy",
		config = function()
			local keymap = vim.keymap.set

			keymap("n", "<C-g>t", "<cmd>GitGutterToggle<cr>", { desc = "Toggle Gitgutter" })
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
			{ "<C-g>bt", "<cmd>GitBlameToggle<cr>", desc = "Toggle GitBlame" },
			{ "<C-g>bcc", "<cmd>GitBlameCopyCommitURL<cr>", desc = "Copy Commit URL" },
			{ "<C-g>bcf", "<cmd>GitBlameCopyFileURL<cr>", desc = "Copy File URL" },
			{ "<C-g>bcs", "<cmd>GitBlameCopySHA<cr>", desc = "Copy Commit SHA" },
		},
	},
	{
		"ruifm/gitlinker.nvim",
		event = "BufReadPre",
		opts = {
			mappings = "<leader>gl",
		},
	},
}
