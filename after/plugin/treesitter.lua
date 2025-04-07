require'nvim-treesitter.configs'.setup {
  ensure_installed = { "svelte","tsx","javascript", "typescript","go","sql", "python", "yaml", "css", "html", "rust", "lua", "vim", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false;
  },
}
