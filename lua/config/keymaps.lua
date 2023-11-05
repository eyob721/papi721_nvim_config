-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local delete = vim.keymap.del

-- [[ Delete unwanted default keymaps ]]
delete("n", "<C-h>")
delete("n", "<C-j>")
delete("n", "<C-k>")
delete("n", "<C-l>")
