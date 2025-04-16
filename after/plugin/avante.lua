require('avante').setup({ 
  provider = "gemini",  
  gemini = {  
    model = "gemini-2.5-pro-exp-03-25",
    temperature = 0,
    max_tokens = 30000,
  },
  anthropic = {
      model = "claude-3-7-sonnet-latest",
      temperature = 0.1,
      max_tokens = 12000,
  },
  behaviour = {
    auto_suggestions = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = false,
    support_paste_from_clipboard = true,
    --highlight_input_on_submit = true,
  },
  windows = {
    input = {
      border = "rounded",
      width = 60,
      height = 10,
      prefix = "",
      start_insert = false,
    },
    sidebar = {
        start_insert = false,
    },
    output = {
      border = "rounded",
      width = 60,
      height = 20,
      highlight = true,
    }
    --ask = {
      --floating = true,
      --border = "rounded",
      --start_insert = true
    --}
  }
})

vim.keymap.set("n", "<C-m>", ":AvanteModels<CR>", { noremap = true, silent = true, desc = "Change Model"})
vim.keymap.set("n", "<C-n>", ":AvanteClear<CR>", { noremap = true, silent = true, desc = "Clear Chat"})

vim.keymap.set("n", "<leader>pa",":AvanteFocus<CR>",{ noremap = true, silent = true, desc = "Focus Avante"})

--[[
-- Context-aware <leader>pa command
vim.keymap.set("n", "<leader>pa", function()
    -- Check if the current buffer is an Avante buffer
    local current_buf = vim.api.nvim_get_current_buf()
    local buf_name = vim.api.nvim_buf_get_name(current_buf)
    local buf_type = vim.bo[current_buf].filetype

    if buf_type ~= "AvanteInput" and buf_type ~= "AvanteSelectedFiles" and buf_type ~= "Avante" then-- and an avante input is open
        vim.cmd("AvanteFocus")
    else
        vim.cmd("AvanteToggle")
    end
end, { noremap = true, silent = false, desc = "Toggle/Focus Avante Sidebar" })

]]
vim.opt.laststatus = 3
