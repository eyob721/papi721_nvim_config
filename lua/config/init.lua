-- [[ Install the Lazy Plugin Manager ]]
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

-- Make sure to set the `mapleader` before loading any plugins
vim.g.mapleader = " "
vim.g.maplocalleaedr = "\\"

-- Load the lazy plugin manager, and your plugins
require("lazy").setup({
	spec = {
		-- Tell lazy from where to load your plugins, and it will load all the modules in that directory
		-- 'plugins' is the 'lua/plugins/' directory
		{ import = "plugins" },
	},
	install = { colorscheme = { "catppuccin-mocha", "habamax" } },
})
