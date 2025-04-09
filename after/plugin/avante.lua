require('avante').setup({ 
  provider = "gemini",  
  gemini = {  
    model = "gemini-2.5-pro-exp-03-25",
    temperature = 0,
    max_tokens = 4096,
  },
  behaviour = {
    auto_suggestions = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = true,
    support_paste_from_clipboard = true,
  },
})

vim.keymap.set("v", "<leader>ai", ":AvantePrompt<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ac", ":AvanteChat<CR>", { noremap = true, silent = true })

vim.opt.laststatus = 3 
