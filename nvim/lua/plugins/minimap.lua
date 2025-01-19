return {
	{
		"wfxr/minimap.vim",
		lazy = false,
		dependencies = { "wfxr/code-minimap" },
		keys = {
			{
				"<leader>pt",
				"<cmd>MinimapToggle<cr>",
				desc = "Toggle Minimap",
			},
			{
				"<leader>pr",
				"<cmd>MinimapRefresh<cr>",
				desc = "Refresh Minimap",
			},
			{
				"<leader>ps",
				"<cmd>MinimapRescan<cr>",
				desc = "Rescan Minimap",
			},
			{
				"<leader>pu",
				"<cmd>MinimapUpdateHighlight<cr>",
				desc = "Update Highlight Minimap",
			},
		},
	},
}
