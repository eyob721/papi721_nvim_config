#!/usr/bin/env lua
local extra_groups = {
    "NormalFloat",
    "NeoTreeNormal",
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",

    "IndentBlanklineChar",

    -- make floating windows transparent
    "LspFloatWinNormal",
    "FloatBorder",
    "TelescopeNormal",
    "TelescopeBorder",
    "TelescopePromptBorder",
    "SagaBorder",
    "SagaNormal",
    "NvimFloat",
}

for i, hl in ipairs(extra_groups) do
    print(i, hl)
end
