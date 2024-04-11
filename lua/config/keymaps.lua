-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Close buffer
keymap.set({ "i", "n", "x", "s" }, "<C-e>", "<cmd>bd<cr>", opts)

-- Move between buffers
keymap.set("n", "<tab>", "<cmd>bnext<cr>")
keymap.set("n", "<S-tab>", "<cmd>bprevious<cr>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Change to normal mode from insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk or kj" })
keymap.set("i", "kj", "<ESC>")
