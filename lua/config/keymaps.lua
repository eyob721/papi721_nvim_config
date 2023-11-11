-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- local delete = vim.keymap.del

-- [[ Delete unwanted default keymaps ]]

-- Move buffers on Buffer line
map("n", "<C-H>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer left" })
map("n", "<C-L>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer right" })
