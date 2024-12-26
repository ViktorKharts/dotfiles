return {
	{
		'sainnhe/gruvbox-material',
		event = "VeryLazy",
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.gruvbox_material_enable_italic = false
			vim.g.gruvbox_material_cursor = 'orange'
			vim.cmd.colorscheme('gruvbox-material')
		end
	}
}
