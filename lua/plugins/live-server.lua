return {
  "barrett-ruth/live-server.nvim",
  build = "pnpm add -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = true,
  key = {
    { "<leader>ols", "<cmd>LiveServerStart<cr>", desc = "Open Live Server" },
    { "<leader>olx", "<cmd>LiveServerStop<cr>", desc = "Close Live Server" },
  },
}
