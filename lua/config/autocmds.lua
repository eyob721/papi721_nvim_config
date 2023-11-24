-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Auto group template function
local function augroup(name)
    return vim.api.nvim_create_augroup("papi_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    group = augroup("c_files"),
    pattern = { "*.c", "*.h" },
    callback = function()
        vim.opt_local.expandtab = false
    end,
})

-- Template for disabeling autoformat for certain files

vim.api.nvim_create_autocmd({ "FileType" }, {
    group = augroup("auto_format"),
    pattern = { "html" },
    callback = function()
        vim.b.autoformat = false
    end,
})
