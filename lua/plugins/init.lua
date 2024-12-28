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
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    enabled = true,
    config = {
      default = true,
    },
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = true,
  },
  {
    "NeogitOrg/neogit",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",       
      "sindrets/diffview.nvim",        
      "nvim-telescope/telescope.nvim",
    },
    config = true
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
      message_template = "• <date> • <author> •",
      date_format = "%m-%d-%Y %H:%M:%S",
      virtual_text_column = 1, 
    },
    keys = {
      { "<C-g>b", "<cmd>GitBlameToggle<cr>", desc = "Toggle GitBlame" },
    },
  }
}

