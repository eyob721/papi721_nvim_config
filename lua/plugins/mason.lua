return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "bash-language-server", -- Bash Lsp
            "shellcheck", -- Bash Linter
            "clangd", -- C and C++ Lsp
            "pyright", -- Python Lsp
            "stylua", -- Lua Formatter
            "shfmt", -- Bash Formatter
            "flake8", -- Python Linter, that has pycodestyel, pyflakes, ...
            "pydocstyle", -- Python Formatter for doctrings
        },
    },
}
