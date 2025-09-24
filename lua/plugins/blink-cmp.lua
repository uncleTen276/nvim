return {
  "saghen/blink.cmp",
  version = "*",
  dependencies = {
    "mikavilpas/blink-ripgrep.nvim",
    "rafamadriz/friendly-snippets",
  },
  event = {
    "InsertEnter",
    "CmdlineEnter",
  },
  opts = function()
    local icons = require("icons")

    return {
      fuzzy = {
        implementation = "rust",
      },
      appearance = {
        kind_icons = {
          Text = icons.kind.Text,
          Method = icons.kind.Method,
          Function = icons.kind.Function,
          Constructor = icons.kind.Constructor,

          Field = icons.kind.Field,
          Variable = icons.kind.Variable,
          Property = icons.kind.Property,

          Class = icons.kind.Class,
          Interface = icons.kind.Interface,
          Struct = icons.kind.Struct,
          Module = icons.kind.Module,

          Unit = icons.kind.Unit,
          Value = icons.kind.Value,
          Enum = icons.kind.Enum,
          EnumMember = icons.kind.EnumMember,

          Keyword = icons.kind.Keyword,
          Constant = icons.kind.Constant,

          Snippet = icons.kind.Snippet,
          Color = icons.kind.Color,
          File = icons.kind.File,
          Reference = icons.kind.Reference,
          Folder = icons.kind.Folder,
          Event = icons.kind.Event,
          Operator = icons.kind.Operator,
          TypeParameter = icons.kind.TypeParameter,
        },
      },
      keymap = {
        preset = "none",
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<C-d>"] = { "scroll_documentation_up", "fallback" },
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        -- ["<Tab>"] = {
        --   function(cmp)
        --     if cmp.snippet_active() then
        --       return cmp.accept()
        --     else
        --       return cmp.select_and_accept()
        --     end
        --   end,
        --   "snippet_forward",
        --   "fallback",
        -- },
        -- ["<S-Tab>"] = { "snippet_backward", "fallback" },
      },
      completion = {
        accept = {
          resolve_timeout_ms = 1000,
        },
        ghost_text = {
          enabled = true,
          show_with_selection = true,
          show_without_selection = false,
        },
        menu = {
          border = "rounded",
          draw = {
            columns = { { "kind_icon" }, { "label", gap = 1, "source_name" } },
            components = {
              source_name = {
                text = function(ctx)
                  return "(" .. ctx.source_name .. ")"
                end,
              },
            },
          },
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 250,
          window = {
            border = "rounded",
          },
        },
      },
      signature = {
        enabled = true,
        trigger = {
          show_on_insert = true,
        },
        window = {
          border = "rounded",
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "ripgrep" },
        providers = {
          ripgrep = {
            module = "blink-ripgrep",
            name = "Ripgrep",
            opts = {
              search_casing = "--smart-case",
            },
          },
          snippets = {
            name = "Snippets",
            module = "blink.cmp.sources.snippets",
            opts = {
              friendly_snippets = true,
              global_snippets = { "all" },
              extended_filetypes = {
                cs = { "unity" },
                python = { "python" },
                javascript = { "javascript" },
                typescript = { "typescript" },
                typescriptreact = { "typescriptreact", "react" },
              },
            },
          },
        },
      },
      cmdline = {
        enabled = true,
        completion = {
          menu = {
            auto_show = true,
            draw = {
              columns = { { "kind_icon" }, { "label" } },
            },
          },
        },
        keymap = {
          ["<C-k>"] = { "select_prev", "fallback" },
          ["<C-j>"] = { "select_next", "fallback" },
          -- ["<Tab>"] = { "accept", "fallback" },
          ["<CR>"] = { "accept_and_enter", "fallback" },
        },
      },
    }
  end,
}
