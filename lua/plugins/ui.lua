return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
          ███╗   ██╗ ██████╗ ███╗   ███╗ ██████╗ ██████╗ ███████╗    ██╗   ██╗██╗███╗   ███╗
          ████╗  ██║██╔═══██╗████╗ ████║██╔═══██╗██╔══██╗██╔════╝    ██║   ██║██║████╗ ████║
          ██╔██╗ ██║██║   ██║██╔████╔██║██║   ██║██████╔╝█████╗      ██║   ██║██║██╔████╔██║
          ██║╚██╗██║██║   ██║██║╚██╔╝██║██║   ██║██╔══██╗██╔══╝      ╚██╗ ██╔╝██║██║╚██╔╝██║
          ██║ ╚████║╚██████╔╝██║ ╚═╝ ██║╚██████╔╝██║  ██║███████╗     ╚████╔╝ ██║██║ ╚═╝ ██║
          ╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝
                                                                                            
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
