return {
  "Exafunction/codeium.vim",
  -- event = "BufEnter",
  config = function()
    vim.keymap.set("i", "<C-x>", function()
      return vim.fn["codeium#Clear"]()
    end)

    vim.keymap.set("i", "<C-cr>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<C-[>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end)

    vim.keymap.set("i", "<C-]>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end)

    vim.keymap.set("i", "<C-i>", function()
      return vim.fn["codeium#Chat"]()
    end)
  end,
}
