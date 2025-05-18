return {
  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    opts = {
      default_file_explorer = true,
      natural_order = false,
      view_options = {
        show_hidden = true,
        is_hidden_file = function(name, _)
          return vim.startswith(name, ".")
        end,
      }
    },
    -- Optional dependencies
    dependencies = { "echasnovski/mini.icons" },
  },
}

