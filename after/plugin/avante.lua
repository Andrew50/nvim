require('avante').setup({ 
  provider = "claude",  
  gemini = {  
    model = "gemini-2.5-pro-exp-03-25",
    temperature = 0,
    max_tokens = 4096,
  },
  anthropic = {
      model = "claude-3-7-sonnet-latest",
      temperature = 0.1,
      max_tokens = 4096,
  },
  behaviour = {
    auto_suggestions = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = true,
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

-- <leader>ac to open chat in normal mode and also in visual mode
--vim.keymap.set("n", "<leader>ac", ":AvanteChat<CR>", { noremap = true, silent = true, desc = "Open Avante Chat" })
--vim.keymap.set("v", "<leader>ac", ":AvanteAsk<CR>", { noremap = true, silent = true, desc = "Open Avante Chat with selection" })

-- <leader>ae to open edit/prompt in visual mode
--vim.keymap.set("v", "<leader>ae", ":AvantePrompt<CR>", { noremap = true, silent = true, desc = "Open Avante Prompt with selection" })

-- <leader>at to toggle between Avante window and main window
-- <leader>ac to ensure the sidebar is open, but won't close it if it's already open

-- <leader>at to toggle between Avante window and main window
vim.keymap.set("n", "<C-m>", ":AvanteModels<CR>", { noremap = true, silent = true, desc = "Change Model"})
vim.keymap.set("n", "<C-n>", ":AvanteClear<CR>", { noremap = true, silent = true, desc = "Clear Chat"})

-- Context-aware <leader>pa command
vim.keymap.set("n", "<leader>pa", function()
    -- Check if the current buffer is an Avante buffer
    local current_buf = vim.api.nvim_get_current_buf()
    local buf_name = vim.api.nvim_buf_get_name(current_buf)
    local buf_type = vim.bo[current_buf].filetype

    --buf type is AvanteInput
    
    -- Check if we're in an Avante buffer by filetype
    if buf_type ~= "AvanteInput" then-- and an avante input is open
        vim.cmd("AvanteFocus")
    else
        vim.cmd("AvanteToggle")
    end
end, { noremap = true, silent = false, desc = "Toggle/Focus Avante Sidebar" })
--[[vim.keymap.set("n", "<leader>pa", function()
  -- Check if there's an Avante window open
  local avante_win = nil
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    local buf_name = vim.api.nvim_buf_get_name(buf)
    if buf_name:match("Avante") then
      avante_win = win
      break
    end
  end
  -- If Avante window exists and we're not in it, jump to it
  if avante_win and vim.api.nvim_get_current_win() ~= avante_win then
    vim.api.nvim_set_current_win(avante_win)
  -- If we're already in Avante window, jump back to previous window
  elseif avante_win and vim.api.nvim_get_current_win() == avante_win then
    vim.cmd("wincmd p")
  -- If no Avante window exists, open one
  else
    vim.cmd("AvanteChat")
  end
end, { noremap = true, silent = true, desc = "Toggle Avante Chat" })

-- <leader>am to open Avante model picker (rebinding from <leader>a?)
vim.keymap.set("n", "<leader>am", function()
  vim.cmd("AvanteModels")
end, { noremap = true, silent = true, desc = "Open Avante Model Picker" })]]


vim.opt.laststatus = 3
