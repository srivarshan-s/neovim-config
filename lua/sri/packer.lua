-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Install packer.nvim if not present on system
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope (fuzzy file finder)
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
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
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- Undo tree
    use 'mbbill/undotree'

    -- Auto commenter
    use 'numToStr/Comment.nvim'

    -- Auto brackets
    use "windwp/nvim-autopairs"

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Fancy statusline
    use 'nvim-lualine/lualine.nvim'

    -- Git plugins
    use 'lewis6991/gitsigns.nvim' -- Git signs display on buffer

end)
