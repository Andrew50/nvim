
  local lsp_zero = require('lsp-zero')

  lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
  end)
  require('mason').setup({})
  require('mason-lspconfig').setup({
    ensure_installed = {
      'pyright', 'svelte', 
      'tsserver', 
     --'ts_ls',
     'eslint',
      'html', 'cssls',
      'dockerls', 'yamlls', 'gopls', 'rust_analyzer',
    },
    handlers = {
      lsp_zero.default_setup,
    },
  })
  require('lspconfig').ts_ls.setup({})
  vim.diagnostic.config({
    virtual_text = true;
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})
  vim.keymap.set("n", "<leader>l", vim.diagnostic.open_float)
