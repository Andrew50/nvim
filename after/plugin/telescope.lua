require('telescope').setup {

    defaults = {
        -- Include hidden files in all telescope searches
        file_ignore_patterns = {
            -- You can still exclude specific patterns if needed
            "node_modules",
            ".git/",
            ".cache",
            "%.o",
            "%.a",
            "%.out",
            "%.class",
            "%.pdf",
            "%.mkv",
            "%.mp4",
            "%.zip"
        },
    },
    pickers = {
        find_files = {
            previewer = false,
            hidden = true, -- Show hidden files
            no_ignore = true, -- Show files ignored by .gitignore
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
            "%.a",
            "%.out",
            "%.class",
            "%.pdf",
            "%.mkv",
            "%.mp4",
            "%.zip"
        },
    },
    pickers = {
        find_files = {
            previewer = false,
            hidden = true, -- Show hidden files
            no_ignore = true, -- Show files ignored by .gitignore
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
