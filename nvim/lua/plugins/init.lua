return {
	"nvim-tree/nvim-web-devicons",
	"mfussenegger/nvim-lint",
	"ThePrimeagen/vim-be-good",
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
	-- {
	-- 	"rcarriga/nvim-notify",
	-- 	event = "VeryLazy",
	-- 	enabled = true,
	-- 	config = {
	-- 		default = true,
	-- 	},
	-- },
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
		event = "VeryLazy",
	},
	{
		"mbbill/undotree",
		event = "VeryLazy",
	},
}

-- telescope settings - replaced with picker
-- return {
-- 	{
-- 		"nvim-telescope/telescope.nvim",
-- 		lazy = false,
-- 		tag = "0.1.8",
-- 		dependencies = {
-- 			"nvim-lua/plenary.nvim",
-- 			{
-- 				"nvim-telescope/telescope-fzf-native.nvim",
-- 				build = "make",
-- 			},
-- 			"nvim-tree/nvim-web-devicons",
-- 		},
-- 		config = function()
-- 			local telescope = require("telescope")
-- 			local actions = require("telescope.actions")
--
-- 			telescope.setup({
-- 				defaults = {
-- 					mappings = {
-- 						i = {
-- 							["<C-k>"] = actions.move_selection_previous,
-- 							["<C-j>"] = actions.move_selection_next,
-- 							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
-- 						},
-- 					},
-- 				},
-- 			})
--
-- 			telescope.load_extension("fzf")
--
-- 			-- set keymaps
-- 			local keymap = vim.keymap
-- 			keymap.set("n", "<leader><space>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- 			keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- 			keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fyzzy find recent files" })
-- 			keymap.set("n", "<leader>f/", "<cmd>Telescope live_grep<cr>", { desc = "Grep" })
-- 			keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Find in Git Files" })
-- 			keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
-- 		end,
-- 	},
-- }
