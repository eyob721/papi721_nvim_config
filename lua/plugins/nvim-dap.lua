return {
    "mfussenegger/nvim-dap",
    opts = {},

    config = function()
        local Config = require("lazyvim.config")
        vim.api.nvim_set_hl(
            0,
            "DapStoppedLine",
            { default = true, link = "Visual" }
        )

        for name, sign in pairs(Config.icons.dap) do
            sign = type(sign) == "table" and sign or { sign }
            vim.fn.sign_define("Dap" .. name, {
                text = sign[1],
                texthl = sign[2] or "DiagnosticInfo",
                linehl = sign[3],
                numhl = sign[3],
            })
        end

        -- My dap config for C/C++
        local dap = require("dap")

        dap.adapters.cppdbg = {
            id = "cppdbg",
            type = "executable",
            command = vim.fn.expand(
                "$HOME/.config/nvim/debug/cpptools/extension/debugAdapters/bin/OpenDebugAD7"
            ),
        }

        dap.configurations.cpp = {
            {
                name = "Debug C/C++ code",
                type = "cppdbg",
                request = "launch",
                program = function()
                    return vim.fn.input(
                        "Path to executable: ",
                        vim.fn.getcwd() .. "/",
                        "file"
                    )
                end,
                cwd = "${workspaceFolder}",
                stopAtEntry = true,
                setupCommands = {
                    {
                        text = "-enable-pretty-printing",
                        description = "enable pretty printing",
                        ignoreFailures = false,
                    },
                    {
                        description = "Set Disassembly Flavor to Intel",
                        text = "-gdb-set disassembly-flavor intel",
                        ignoreFailures = true,
                    },
                },
            },
        }
        dap.configurations.c = dap.configurations.cpp
    end,
}
