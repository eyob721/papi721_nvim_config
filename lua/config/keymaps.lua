-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local delete = vim.keymap.del

-- [[ Delete unwanted default keymaps ]]
-- [LazyVim Default] Move to window using the <ctrl> hjkl keys
-- delete("n", "C-H")
-- delete("n", "C-J")
-- delete("n", "C-K")
-- delete("n", "C-L")

-- Move buffers on Buffer line
map("n", "<C-h>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer left" })
map("n", "<C-l>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer right" })
