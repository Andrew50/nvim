
  local lsp_zero = require('lsp-zero')

  lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
  end)

  require('mason').setup({})
  require('mason-lspconfig').setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {
      'pyright', 'svelte', 'tsserver', 'html', 'cssls',
      'dockerls', 'yamlls', 'gopls', 'rust_analyzer',
    },
    handlers = {
      lsp_zero.default_setup,
    },
  })

--
--
--
--
--local lsp = require('lsp-zero')
--
--
---- Setup lsp-zero with your desired configuration and on_attach globally
--lsp.preset("recommended")
--lsp.ensure_installed({
--        'pyright', 'svelte', 'tsserver', 'html', 'cssls',
--        'dockerls', 'yamlls', 'gopls', 'rust_analyzer',
--    })
--lsp.setup({
--    on_attach = function(client, bufnr)
--        local opts = { noremap = true, silent = true, buffer = bufnr }
--        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--    end,
--    -- Other global settings for lsp-zero
--})
--
---- Mason setup for automatic LSP installation
--require('mason').setup()
--require('mason-lspconfig').setup({
--    ensure_installed = {
--        'pyright', 'svelte', 'tsserver', 'html', 'cssls',
--        'dockerls', 'yamlls', 'gopls', 'rust_analyzer',
--    },
--})
--
