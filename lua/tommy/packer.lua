-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- after having added a new use block you must use :so and :PackerSync to install the plugin

-- basically the purpose of this file is to install packages and then load them in the config files


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]



-- function to require plugins
return require('packer').startup(function(use)
  

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- for LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  
  -- for colorscheme
  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
         require("rose-pine").setup()
         vim.cmd('colorscheme rose-pine')
      end
  })


  -- for copilot
  use { "zbirenbaum/copilot.lua" }


  -- for file explorer (nvim-tree)
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- for file icons
      },
      tag = 'nightly' -- updated every week. (see issue #1193)
  }

end)
