return {
  {
    "folke/styler.nvim",
    event = "VeryLazy",
    config = function()
      require("styler").setup {
        colorscheme = "tokyonight",
        themes = {
          markdown = { colorscheme = "gruvbox-material" },
          help = { colorscheme = "gruvbox-material" },
          go = { colorscheme = "gruvbox" },
        },
      }
    end,
  },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      local tokyonight = require "tokyonight"

      tokyonight.setup { 
        style = "storm",
        styles = {
          comments = {
            italic = false,
          },
          keywords = {
            italic = false,
          }
        },
        on_highlights = function(hl, c) 
          hl.GitGutterAdd = { fg = "#23ff36" } 
          hl.GitGutterChange = { fg = "#0292fe"}
          hl.GitGutterDelete = { fg = "#ea0303"}
        end,
      }

      tokyonight.load()
    end,
  },
  -- {
  --   "catppuccin/nvim",
  --   event = "VeryLazy",
  --   name = "catppuccin",
  --   priority = 1000,
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("gruvbox").setup()
    end,
  },
	{
		'sainnhe/gruvbox-material',
		event = "VeryLazy",
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.gruvbox_material_enable_italic = false
			vim.g.gruvbox_material_cursor = 'orange'
			-- vim.cmd.colorscheme('gruvbox-material')
		end
	}
}
