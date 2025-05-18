return {
  "nvim-treesitter/nvim-treesitter",
  build = function ()
    require("nvim-treesitter.install").update({with_sync=true})
  end,
  lazy = false,
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
      "elixir",
      "go",
      "gleam",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "racket",
      "query",
      "sql",
      "terraform",
      "tmux",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
      "python",
    },
  },
}
