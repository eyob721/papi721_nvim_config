return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "bash-language-server", -- Bash Lsp
            "shellcheck", -- Bash Linter
            "shfmt", -- Bash Formatter
            "clangd", -- C and C++ Lsp
            "pyright", -- Python Lsp
            "pydocstyle", -- Python Formatter for doctrings
            "stylua", -- Lua Formatter
        },
    },
}
