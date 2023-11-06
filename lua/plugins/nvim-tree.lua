return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    -- If you don't need to invoke special commands in the configs option, you
    -- can instead pass it a table which when the plugin is loaded this table
    -- will be passed to the setup function.
    config = {
        renderer = {
            icons = {
                git_placement = "after",
                modified_placement = "before",
                glyphs = {
                    default = "",
                    symlink = "",
                    bookmark = "󰆤",
                    modified = "●",
                    folder = {
                        arrow_closed = "",
                        arrow_open = "",
                        default = "",
                        open = "",
                        empty = "",
                        empty_open = "",
                        symlink = "",
                        symlink_open = "",
                    },
                    git = {
                        unstaged = "",
                        staged = "✓",
                        unmerged = "",
                        renamed = "➜",
                        untracked = "★",
                        deleted = "✗",
                        ignored = "◌",
                    },
                },
            },
        }
    }
}
