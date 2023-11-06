return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,  -- default is 50
    opts = {},
    -- config gets loaded everytime the plugin is loaded
    config = function()
        vim.cmd("colorscheme tokyonight")
    end
}
