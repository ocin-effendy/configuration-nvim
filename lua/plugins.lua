return require('packer').startup(function()
	use 'ryanoasis/vim-devicons'
	-- use 'vim-airline/vim-airline'
	-- use 'vim-airline/vim-airline-themes'
	use 'folke/tokyonight.nvim'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'windwp/nvim-autopairs'

	use {
		'akinsho/flutter-tools.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}
	use 'nvim-lualine/lualine.nvim'
	use 'rcarriga/nvim-notify'
  use 'kyazdani42/nvim-web-devicons'
	use 'romgrk/barbar.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'p00f/nvim-ts-rainbow'
	use 'dart-lang/dart-vim-plugin'
	use 'sbdchd/neoformat'
end)
