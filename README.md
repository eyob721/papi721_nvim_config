# papi721 configuration

This is my Neovim configuration. The references I have used are listed in the References section.

## Configuration steps

This is the steps i followed are:

1.  Configure options
2.  Configure keymaps
3.  Configure autocmds
4.  Add plugins
    - Add a plugin manager
    - Add a colorscheme
    - Add Editor plugins
    - Add LSP plugins
    - Add Coding plugins
    - Add UI plugins
    - Add Util plugins

## Keymaps

To organize keymaps, I used folke's keymap organization:

![20d5b8647700aed2861909e615ab9f8a.png](file:///home/eyob721/snap/joplin-desktop/40/.config/joplin-desktop/resources/90d0b6ff7b1242b3997a81a90cd6185a.png)

## Plugins

I have used the following plugins, categorized as follows

- Editor plugins
    - [telescope](https://github.com/nvim-telescope/telescope.nvim) = fuzzy file finder
    - [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim) =fzf sorter for telescope written in c
    - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) = file explorer
    - [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) = nerdfont icons for file explorers
    - [nvim-spectre](https://github.com/nvim-pack/nvim-spectre) = search/replace in multiple files
    - [flash](https://github.com/folke/flash.nvim) = navigate with search
    - [which-key](https://github.com/folke/which-key.nvim) = to remember key bindings
    - [gitsigns](https://github.com/lewis6991/gitsigns.nvim) = git signs
    - [vim-illuminate](https://github.com/RRethy/vim-illuminate) = highlights word instances under your cursor
    - [mini.bufremove](https://github.com/echasnovski/mini.bufremove) = removes buffers
    - [mini.surround](https://github.com/echasnovski/mini.surround) = for surrounding text with brackets, quotes, .... etc.
    - [mini.comment](https://github.com/echasnovski/mini.comment) = for fast and familiar per-line commenting.
    - [trouble](https://github.com/folke/trouble.nvim) = better diagnostics list and others
    - [todo-comments](https://github.com/folke/todo-comments.nvim) = finds and lists all of the TODO, HACK, BUG, ... etc.
    - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) = a simple and easy way to use the interface for tree-sitter in Neovim
    - [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) = syntax aware text-objects, select, move, swap, and peek support.
    - [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) = show context of the current function
    - [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) = use treesitter to auto close and auto rename html tag and JSX
    - `optional` [mini.ai](https://github.com/echasnovski/mini.ai) = extend and create a/i textobjects.
- LSP plugins
    - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) = quickstart configs for Nvim LSP
    - [mason](https://github.com/williamboman/mason.nvim) = package manager for easy install and management of LSP servers, DAP servers, linters, and formatters.
    - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) = bridges mason with lspconfig plugin , making it easier to use both plugins together.
    - [neoconf](https://github.com/folke/neoconf.nvim) = to manage global and project-local settings.
    - [neodev](https://github.com/folke/neodev.nvim) = Neovim setup for init.lua and plugin development with full signature help, docs and completion for the nvim lua API.
    - [efm-langserver](https://github.com/mattn/efm-langserver) = general purpose language server for formatting and linting
    - [efmls-configs-nvim](https://github.com/creativenull/efmls-configs-nvim) = an unofficial collection of linters and formatters configured for efm-langserver for neovim.
- Coding plugins
    - [LuaSnip](https://github.com/L3MON4D3/LuaSnip) = snippet engine for Neovim written in Lua.
    - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) = set of preconfigured snippets for different languages.
    - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) = a completion plugin for neovim coded in Lua.
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) = nvim-cmp source for neovim's built-in language server client.
    - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) = nvim-cmp source for buffer words.
    - [cmp-path](https://github.com/hrsh7th/cmp-path) = nvim-cmp source for file system paths.
    - [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) = luasnip completion source for nvim-cmp.
    - `optional` [vim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) = Neovim treesitter plugin for setting the comment string based on the cursor location in a file.
- UI plugins
    - [nvim-notify](https://github.com/rcarriga/nvim-notify) = A fancy, configurable, notification manager for Neovim
    - [dressing](https://github.com/stevearc/dressing.nvim) = to improve the default vim.ui interfaces
    - [bufferline](https://github.com/akinsho/bufferline.nvim) = a snazzy buffer line for Neovim
    - [lualine](https://github.com/nvim-lualine/lualine.nvim) = a blazing fast and easy to configure neovim status line plugin written in pure lua.
    - [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) = indent guides for Neovim
    - `optional` [mini.indentscope](https://github.com/echasnovski/mini.indentscope) = to visualize and operate on indent scope
    - [noice](https://github.com/folke/noice.nvim) = Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
    - [nui](https://github.com/MunifTanjim/nui.nvim) = UI Component Library for Neovim.
    - [dashboard](https://github.com/nvimdev/dashboard-nvim) = Fancy and Blazing Fast start screen plugin of Neovim.
- Util plugins
    - [vim-startuptime](https://github.com/dstein64/vim-startuptime) = measures vim startup time
    - [persistence](https://github.com/folke/persistence.nvim) = 💾 Simple session management for Neovim
    - [plenary](https://github.com/nvim-lua/plenary.nvim) = library used by other plugins

## File structure

I have organized the files, similar to folke's LazyVim setup, as follows

- lua
    - papi721
        - options.lua
        - keymaps.lua
        - autocmds.lua
        - lazy.lua (loads the plugins)
    - plugins

This is how the files are called:

- init.lua
    - options
    - keymaps
    - autocmds
    - lazy
        - plugins

## Notes

### Formatting C files

Okay formatting C files is quite troublesome, but you can do so using
`clang-format`.

Steps:

    - Install `clang-format` in mason
    - Use `clang-format` in conform.nvim
    - To format using `clang-format` you need to have a `.clang-format` file
        - NOTE: The `.clang-format` file needs to be placed in:
            - the project folder or
            - any parent folder of the file you want to format.
        - `clang-format.exe` searches for the config file automatically starting
          with the folder where the file you want to format is located, all the
          way to the topmost directory.
    - So put your `.clang-format` in like your `$HOME` directory
    - Now you are all set

## References

- [How to setup Neovim from Scratch - Complete Guide](https://www.youtube.com/watch?v=ZjMzBd1Dqz8&t=7516s)
- [LazyVim](https://www.lazyvim.org/plugins)
