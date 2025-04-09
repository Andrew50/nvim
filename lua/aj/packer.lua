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
  --use {
  --  'MeanderingProgrammer/render-markdown.nvim',
  --  requires = { 'nvim-treesitter/nvim-treesitter' }, -- Treesitter is a dependency
  --  config = function()
  --    require('render-markdown').setup({
  --      file_types = { 'markdown', 'Avante' },
  --    })
  --  end,
  --}

  -- Avante.nvim
  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }
  use {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup {
       -- your personnal icons can go here (optional)
       -- override = {
       --  vim = {
       --    icon = "",
       --    color = "#019833",
       --    name = "Vim"
       --  }
       -- },
       -- globally enable default icons (default to true)
       -- will get overriden by `get_icons` option
       default = true;
     }
    end
  }
  
  -- Markdown viewer
  use {
    'OXY2DEV/markview.nvim',
    branch = 'main',
    config = function()
      require('markview').setup({
        preview = {
          filetypes = { "markdown", "Avante" },
          ignore_buftypes = {},
        },
        max_length = 99999,
      })
    end
  }
end)
