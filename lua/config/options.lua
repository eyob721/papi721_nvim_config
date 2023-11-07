-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- [[ Globals --------------------------------------------- ]]
-- This file is automatically loaded by plugins.core
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Enable LazyVim auto format
vim.g.autoformat = true

-- LazyVim root dir detection
-- Each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
--
local opt = vim.opt

-- [[ General ]]
opt.spelllang = { "en" }

-- [[ Tabs / Indentation ]]
opt.tabstop = 4 -- Number of spaces a <Tab> counts for
opt.shiftwidth = 0 -- Number of spaces to use for each space of autoindent
opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations
opt.expandtab = true -- Expand tabs to spaces
opt.shiftround = true -- Rounds indent to multiple of `shiftwidth`, applies to > and <
opt.smartindent = true -- automatic indenting

-- [[ Appearance ]]
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.list = true -- Show some invisible characters (tabs...
opt.fillchars = {
    foldopen = "",
    foldclose = "",
    -- fold = "⸱",
    fold = " ",
    foldsep = " ",
    diff = "╱",
    eob = " ",
}
opt.showmode = false -- Dont show mode since we have a statusline
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.termguicolors = true -- True color support
-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- [[ Behavior ]]
opt.clipboard:append("unnamedplus") -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.mouse = "a" -- Enable mouse mode
opt.autowrite = true -- Enable auto write
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.laststatus = 3 -- global statusline
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.sessionoptions = {
    "buffers",
    "curdir",
    "tabpages",
    "winsize",
    "help",
    "globals",
    "skiprtp",
    "folds",
}
opt.undofile = true
opt.undolevels = 10000
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.timeoutlen = 300
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width

-- [[ Search ]]
opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Don't ignore case with capitals
opt.inccommand = "nosplit" -- preview incremental substitute
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

-- [[ Navigation ]]
opt.scrolloff = 7 -- Lines of context
opt.sidescrolloff = 5 -- Columns of context
if vim.fn.has("nvim-0.10") == 1 then
    opt.smoothscroll = true
end

-- [[ Screen ]]
opt.splitright = true -- Put new windows right of current
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "screen"

-- [[ Folding ]]
vim.opt.foldlevel = 99
vim.opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
if vim.fn.has("nvim-0.9.0") == 1 then
    vim.opt.statuscolumn = [[%!v:lua.require'lazyvim.util'.ui.statuscolumn()]]
end

-- HACK: causes freezes on <= 0.9, so only enable on >= 0.10 for now
if vim.fn.has("nvim-0.10") == 1 then
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
else
    vim.opt.foldmethod = "indent"
end

-- [[ Formatting ]]
opt.formatoptions = "tcrqn]" -- tcqj -- jcroqlnt
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.wrap = false -- Disable line wrap
opt.textwidth = 79
opt.colorcolumn = "+1"
-- vim.o.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
