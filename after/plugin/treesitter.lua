require'nvim-treesitter.configs'.setup {
  ensure_installed = { "svelte","javascript", "go", "python", "yaml", "css", "html", "rust", "lua", "vim", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false;
  },
}
