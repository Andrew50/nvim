vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.opt.undofile = true
local undodir = vim.fn.stdpath('data') .. '/undodir'
vim.opt.undodir = undodir
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, 'p')
end
