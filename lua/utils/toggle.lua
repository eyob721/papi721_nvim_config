local M = {}

function M.spell ()
    if vim.opt.spell == false then
        vim.opt.spell = true
    else
        vim.opt.spell = false
    end
end

function M.wrap ()
    if vim.opt.wrap == false then
        vim.opt.wrap = true
    else
        vim.opt.wrap = false
    end
end

return M
