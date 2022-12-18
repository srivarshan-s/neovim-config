-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope (fuzzy file finder)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Monokai color scheme
	use({
		'tanvirtin/monokai.nvim',
		as = 'monokai',
	})

	-- Rose-pine color scheme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})

    -- Gruvbox color scheme
    use 'sainnhe/gruvbox-material'

	-- Treesitter
	use ( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	-- Undo tree
	use 'mbbill/undotree'

    -- Auto commenter
    use 'numToStr/Comment.nvim'

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
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

end)
