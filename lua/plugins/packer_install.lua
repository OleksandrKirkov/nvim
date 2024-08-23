-- Add Packer in Nvim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- auto update packer
	use 'wbthomason/packer.nvim'

	-- LSP server
	use 'neovim/nvim-lspconfig'

	-- icons  with autocomplete
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('plugins/lspkind')
		end
	}

	-- Installer with servers LSP
	use {
		'williamboman/nvim-lsp-installer',
		config = function()
			require('plugins/lsp-installer')
		end
	}

	-- Menu for viewing LSP errors
	use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup {}
		end,
	}

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}

	-- Neo Ttee sidebar
	
	use {
  		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		requires = { 
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", 
      		"MunifTanjim/nui.nvim",
		"s1n7ax/nvim-window-picker"
    }
  }

	-- [[ Themes ]] --
	
	use "AbdelrahmanDwedar/awesome-nvim-colorschemes"

	vim.cmd('colorscheme tokyonight')

end)
