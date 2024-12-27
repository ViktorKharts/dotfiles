return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    lazy = vim.fn.argc(-1) == 0, -- load early when opening a file from cmd line
    opts_extend = { "ensure_installed" },
    auto_install = true,
    sync_install = false,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      ensure_installed = {
        "angular",
        "bash",
        "c",
        "css",
        "go",
        "gleam",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "sql",
        "terraform",
        "tmux",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },

}

