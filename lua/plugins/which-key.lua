return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },

      -- Lazy
      { "<leader>l", "<cmd>Lazy<cr>", desc = "Plugin Manager" },

      -- LSP manager
      { "<leader>m", "<cmd>Mason<cr>", desc = "Lsp Manager" },

      -- Diffview 
      { "<leader>do", "<cmd>DiffviewOpen<cr>", desc = "Open Diff View" },
      { "<leader>dc", "<cmd>DiffviewClose<cr>", desc = "Close Diff View" },

      -- Neogit
      { "<leader>n", "<cmd>Neogit<cr>", desc = "Toggle Neogit" },

      -- Undo Tree
      { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle undo tree" },

      -- Oil
      { "<leader>-", "<cmd>Oil<CR>", desc = "Open file tree" },
    },
  },
}

