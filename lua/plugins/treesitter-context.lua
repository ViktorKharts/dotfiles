return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    opts = {},
    config = function()
      local keymap = vim.keymap.set

      keymap("n", "[c", function() 
        require("treesitter-context").go_to_context(vim.v.count1) 
      end, { silent = true, desc = "Jump to ctx start" })
    end,
  },
}
