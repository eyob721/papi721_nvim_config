-- Install lazy plugin manager if it is not installed already
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Invoke lazy plugin manager

local opts = {
    defaults = {
        lazy = true, -- should plugins be lazy-loaded?
    },
    install = {
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { "tokyonight", "habamax" },
    },
    change_detection = {
        notify = true, -- get a notification when changes are found
    },
    rtp = {
        ---@type string[] list any plugins you want to disable here
        disabled_plugins = {
            "gzip",
            "matchit",
            "matchparen",
            "netrwPlugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
        },
    },
}

require("lazy").setup('plugins', opts)
