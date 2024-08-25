vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
--vim.opt.wrap = false
function ToggleWrap()
    if vim.wo.wrap then
        vim.wo.wrap = false
    else
        vim.wo.wrap = true
    end
end
vim.api.nvim_set_keymap('n', '<leader>w', ':lua ToggleWrap()<CR>', {noremap = true, silent = true})
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 3
vim.opt.updatetime = 50
vim.opt.colorcolumn = "0"

vim.g.mapleader = " "

--vim.opt.clipboard = "unnamedplus"

