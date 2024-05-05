vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { 
            {'nvim-lua/plenary.nvim'},
            {'BurntSushi/ripgrep'}
        }
    }
    use ({ 
        'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    })
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
    use {
        'nvim-lualine/lualine.nvim',
        -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'folke/noice.nvim',
        requires = { 'MunifTanjim/nui.nvim' }
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup() -- Vgc and Vgb for commenting
        end
    }
    use {
        "nvimtools/none-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" }
    }
    use {
        "smoka7/multicursors.nvim",
        requires  = { 'smoka7/hydra.nvim' },
    }
end)
