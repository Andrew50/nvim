-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          {'neovim/nvim-lspconfig'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
      }
  }
  use 'ellisonleao/dotenv.nvim'
  
  -- Required dependencies for avante.nvim
  use 'stevearc/dressing.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'MeanderingProgrammer/render-markdown.nvim'
  
  -- Avante.nvim
  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }
end)