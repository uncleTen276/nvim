return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = { enabled = true },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<S-Tab>", -- Use Tab to accept suggestions
            next = "<C-n>", -- Navigate to the next suggestion
            prev = "<C-p>", -- Navigate to the previous suggestion
            dismiss = "<C-c>", -- Dismiss suggestion
          },
        },
      })
    end,
  },
}
