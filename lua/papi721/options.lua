local opt = vim.opt

-- [[ General ]]
opt.spelllang = { "en" }

-- [[ Tabs / Indentation ]]
opt.tabstop = 4 -- Number of spaces a <Tab> counts for
opt.shiftwidth = 0 -- Number of spaces to use for each space of autoindent
opt.softtabstop = 4  -- Number of spaces that a <Tab> counts for while performing
                     -- editing operations 
opt.expandtab = true -- Expand tabs to spaces
opt.shiftround = true -- Rounds indent to multiple of `shiftwidth`, applies to > and <
opt.smartindent = true -- automatic indenting

-- [[ Appearance ]]
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.list = false -- Show some invisible characters (tabs...e.t.c)
opt.showmode = false -- Dont show mode since we have a statusline
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.termguicolors = true -- True color support

-- [[ Behavior ]]
opt.clipboard:append("unnamedplus") -- Sync with system clipboard
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.mouse = "a" -- Enable mouse mode
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.hidden = true -- allows you to change buffers without saving
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undolevels = 10000
opt.undodir = vim.fn.expand("~/.vim/undodir")

-- [[ Search ]]
opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Don't ignore case with capitals
opt.inccommand = "nosplit" -- preview incremental substitute
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.hlsearch = false -- disable highlight search

-- [[ Navigation ]]
opt.scrolloff = 10 -- Lines of context
opt.sidescrolloff = 7 -- Columns of context

-- [[ Screen ]]
opt.splitright = true -- Put new windows right of current
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "screen" -- Cursor position after opening horizontal split

-- [[ Formatting ]]
opt.wrap = false -- Disable line wrap
opt.textwidth = 80 -- Use a maximum text width of 80 when editing
opt.colorcolumn = "+1" -- Draw a colorcolumn at +1 the text width value

