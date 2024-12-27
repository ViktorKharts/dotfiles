return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
      local harpoon=require("harpoon")
      local keymap = vim.keymap.set

      harpoon:setup()

      keymap("n", "<C-h>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon list all" })
      keymap("n", "<C-h>a", function() harpoon:list():add() end, { desc = "Harpoon add to list" })

      keymap("n", "<C-h>r", function() harpoon:list():select(1) end, { desc = "Harpoon select first" })
      keymap("n", "<C-h>t", function() harpoon:list():select(2) end, { desc = "Harpoon select second" })
      keymap("n", "<C-h>y", function() harpoon:list():select(3) end, { desc = "Harpoon select third" })
      keymap("n", "<C-h>u", function() harpoon:list():select(4) end, { desc = "Harpoon select fourth" })

      keymap("n", "<C-h>p", function() harpoon:list():prev() end, { desc = "Harpoon select previouse" })
      keymap("n", "<C-h>n", function() harpoon:list():next() end, { desc = "Harpoon select next" })
    end,
	},
}
