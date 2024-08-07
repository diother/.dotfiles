vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use({
        "epwalsh/obsidian.nvim",
        tag = "*",
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    use 'folke/zen-mode.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { 
            {'nvim-lua/plenary.nvim'},
            {'BurntSushi/ripgrep'}
        }
    }
    use 'catppuccin/nvim'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('windwp/nvim-ts-autotag')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
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
    use ('nvim-lualine/lualine.nvim')
    use {
        'folke/noice.nvim',
        requires = { 'MunifTanjim/nui.nvim' }
    }
    use 'numToStr/Comment.nvim'
    use {
        "nvimtools/none-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        commit = "88821b6"
    }
    use {
        "smoka7/multicursors.nvim",
        requires  = { 'smoka7/hydra.nvim' },
    }
end)
