vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--vim.api.nvim_set_keymap('n', '<Leader>w', '<C-\\><C-n><C-w>', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('t', '<C-w>t', '<C-\\><C-n>', {noremap = true, silent = true}
vim.api.nvim_set_keymap('t', '<C-t>', [[<C-\><C-n>i dir\<CR>]], {noremap = true})
