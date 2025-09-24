return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {},
        html = {},
        tailwindcss = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
            },
          },
        },
        graphql = {},
        emmet_ls = {},
        pyright = {},
        gopls = {},
        jsonls = {},
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "tsserver",
        "html",
        "tailwindcss",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "pyright",
        "gopls",
        "jsonls",
      },
    },
  },
}
