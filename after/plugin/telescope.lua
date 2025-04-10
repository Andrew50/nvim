require('telescope').setup {
    pickers = {
        find_files = {
            previewer = false
        },
        current_buffer_fuzzy_find = {
            previewer = false
        },
        grep_string = {
            previewer = false
        }
        -- Add other pickers as needed
    }
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
