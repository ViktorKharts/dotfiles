return {
  "nvim-tree/nvim-web-devicons",
  "mfussenegger/nvim-lint",
  "ThePrimeagen/vim-be-good",
  "MunifTanjim/prettier.nvim",
  "williamboman/mason.nvim",
  "nvim-treesitter/nvim-treesitter-context",
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
}

