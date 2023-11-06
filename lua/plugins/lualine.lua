local indentation = function()
    local expandtab = vim.api.nvim_buf_get_option(0, "expandtab")
    local tabstop = vim.api.nvim_buf_get_option(0, "tabstop")

    if expandtab then
        return "spaces: " .. tabstop
    else
        return "tabs: " .. tabstop
    end
end

return {
    "nvim-lualine/lualine.nvim",
    opts = function()
        -- PERF: we don't need this lualine require madness 🤷
        local lualine_require = require("lualine_require")
        lualine_require.require = require

        local Util = require("lazyvim.util")
        local icons = require("lazyvim.config").icons

        vim.o.laststatus = vim.g.lualine_laststatus

        return {
            options = {
                theme = "auto",
                globalstatus = true,
                disabled_filetypes = {
                    statusline = { "dashboard", "alpha", "starter" },
                },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch" },

                lualine_c = {
                    Util.lualine.root_dir(),
                    {
                        "diagnostics",
                        symbols = {
                            error = icons.diagnostics.Error,
                            warn = icons.diagnostics.Warn,
                            info = icons.diagnostics.Info,
                            hint = icons.diagnostics.Hint,
                        },
                    },
                    {
                        "filetype",
                        icon_only = true,
                        separator = "",
                        padding = { left = 1, right = 0 },
                    },
                    { Util.lualine.pretty_path() },
                },
                lualine_x = {
                    { indentation },
                    {
                        "diff",
                        symbols = {
                            added = icons.git.added,
                            modified = icons.git.modified,
                            removed = icons.git.removed,
                        },
                        source = function()
                            local gitsigns = vim.b.gitsigns_status_dict
                            if gitsigns then
                                return {
                                    added = gitsigns.added,
                                    modified = gitsigns.changed,
                                    removed = gitsigns.removed,
                                }
                            end
                        end,
                    },
                },
                lualine_y = {
                    { "location", padding = { left = 0, right = 1 } },
                },
                lualine_z = {
                    "progress",
                },
            },
            extensions = { "neo-tree", "lazy" },
        }
    end,
}
