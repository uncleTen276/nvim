return {
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    local treesitter = require("nvim-treesitter.configs")
    return {
      indent = true,
      ensure_installed = {
        "bash",
        "comment",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "rust",
        "scss",
        "svelte",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      autotag = {
        enable = true,
      },
      rainbow = {
        enable = true,
      },
      playground = {
        enable = true,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
