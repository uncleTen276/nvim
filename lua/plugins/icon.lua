return {
  "nvim-web-devicons",
  opts = function()
    local devicons = require("nvim-web-devicons").set_icon({
      ["templ"] = {
        icon = "",
        color = "#ffc900",
        name = "Templ",
      },
      ["mod"] = {
        icon = "",
        color = "#d03770",
        name = "Mod",
      },
      ["sum"] = {
        icon = "",
        color = "#d03770",
        name = "Sum",
      },
    })
    return devicons
  end,
}
