vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--vim.api.nvim_set_keymap('n', '<Leader>w', '<C-\\><C-n><C-w>', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('t', '<C-w>t', '<C-\\><C-n>', {noremap = true, silent = true}
--vim.api.nvim_set_keymap('t', '<C-t>', [[<C-\><C-n>i dir\<CR>]], {noremap = true})
vim.keymap.set("n", "{", "{zz", { noremap=true, silent=true })
vim.keymap.set("n", "}", "}zz", { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

vim.g.ftplugin_sql_omni_key = '<C-j>'
