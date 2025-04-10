vim.keymap.set("n", "<leader>u", function()
    -- Check if undotree is visible
    local windows = vim.api.nvim_list_wins()
    local undotree_visible = false
    
    for _, win in ipairs(windows) do
        local buf = vim.api.nvim_win_get_buf(win)
        local buf_name = vim.api.nvim_buf_get_name(buf)
        local buf_ft = vim.api.nvim_buf_get_option(buf, "filetype")
        
        -- Check both buffer name and filetype
        if buf_name:match("undotree_") or buf_ft == "undotree" then
            undotree_visible = true
            break
        end
    end
    
    -- Toggle undotree
    vim.cmd.UndotreeToggle()
    
    -- If we're opening undotree (it wasn't visible before), focus it
    if not undotree_visible then
        -- Wait a moment for undotree to open
        vim.defer_fn(function()
            -- Find and focus the undotree window
            for _, win in ipairs(vim.api.nvim_list_wins()) do
                local buf = vim.api.nvim_win_get_buf(win)
                local buf_name = vim.api.nvim_buf_get_name(buf)
                local buf_ft = vim.api.nvim_buf_get_option(buf, "filetype")
                
                if buf_name:match("undotree_") or buf_ft == "undotree" then
                    vim.api.nvim_set_current_win(win)
                    break
                end
            end
        end, 10) -- Small delay to ensure undotree has opened
    end
end)
vim.opt.undofile = true
local undodir = vim.fn.stdpath('data') .. '/undodir'
vim.opt.undodir = undodir
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, 'p')
end
