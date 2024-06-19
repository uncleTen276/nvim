return {
  -- {
  --   "sekke276/dark_flat.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --   },
  -- },
  -- {
  --   "olivercederborg/poimandres.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    config = function(_, opts)
      require("tokyonight").setup({
        transparent = true,
        style = "storm",
        on_highlights = function(hl, c)
          hl.NormalFloat = { link = "Normal" }
          hl.FloatBorder = {
            bg = c.none,
            fg = "#29a4bd",
          }
          hl.NvimTreeNormal = { link = "NormalFloat" }
          hl.TelescopeNormal = { link = "NormalFloat" }
          hl.TelescopeBorder = { bg = c.none }
          hl.NotifyINFOBorder = { bg = c.none }
          hl.NotifyBackground = { bg = c.none }
        end,
      })
    end,
  },
}
