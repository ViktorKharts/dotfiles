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
}

