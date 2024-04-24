return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  cmd = {
    "TSInstall",
    "TSUninstall",
    "TSUpdate",
    "TSUpdateSync",
    "TSInstallInfo",
    "TSInstallSync",
  },
  keys = {
    { "<leader>Tu", "<cmd>TSUpdateSync", desc = "Treesitter Update sync" },
  },
  event = { "BufRead", "VeryLazy" },
  opts = function()
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
        "c_sharp",
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
