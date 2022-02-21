return require('packer').startup(function()

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- lsp
    use 'neovim/nvim-lspconfig'
    
    -- langagues 
    use 'rust-lang/rust.vim'
    
    -- status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }   
    }
    -- vim-just
    use 'NoahTheDuke/vim-just'

    -- colorscheme
    use 'bluz71/vim-moonfly-colors'

    -- tree-sitter
    use 'nvim-treesitter/nvim-treesitter'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- indent lines
    use "lukas-reineke/indent-blankline.nvim"

    -- completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-vsnip'
    
    -- comments
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }

    -- editing
    use 'jiangmiao/auto-pairs'

    -- which-key
    use {
        "folke/which-key.nvim",
        config = function()
        require("which-key").setup {}
    end
}
end)
