return require('packer').startup(function()
    -- packer self
	use 'https://www.gitclone.com/github.com/wbthomason/packer.nvim'

    -- theme
	use 'https://www.gitclone.com/github.com/junegunn/seoul256.vim' --theme
	use 'https://www.gitclone.com/github.com/folke/tokyonight.nvim' --theme
    use { "https://www.gitclone.com/github.com/catppuccin/nvim", as = "catppuccin" }
    use {'https://gh.api.99988866.xyz/https://github.com/marko-cerovac/material.nvim'} --theme
    use {"rafamadriz/neon"}

    --nvim tree
	use {
		'https://www.gitclone.com/github.com/kyazdani42/nvim-tree.lua',
		requires = 'https://www.gitclone.com/github.com/kyazdani42/nvim-web-devicons'}

    --lsp
    use 'https://www.gitclone.com/github.com/williamboman/mason.nvim'
    use 'https://www.gitclone.com/github.com/williamboman/mason-lspconfig.nvim'
    use 'https://www.gitclone.com/github.com/p00f/clangd_extensions.nvim'
	use 'https://www.gitclone.com/github.com/neovim/nvim-lspconfig'
    use ({
        'https://www.gitclone.com/github.com/nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require('lspsaga').setup({})
        end,
    })
    
    -- cmp
    use 'https://gh.api.99988866.xyz/https://github.com/hrsh7th/cmp-nvim-lsp'
    use 'https://gh.api.99988866.xyz/https://github.com/hrsh7th/cmp-buffer'
    use 'https://gh.api.99988866.xyz/https://github.com/hrsh7th/cmp-path'
    use 'https://gh.api.99988866.xyz/https://github.com/hrsh7th/cmp-cmdline'
    use 'https://gh.api.99988866.xyz/https://github.com/hrsh7th/nvim-cmp'
    use 'https://gh.api.99988866.xyz/https://github.com/f3fora/cmp-spell'
    use 'https://gh.api.99988866.xyz/https://github.com/onsails/lspkind-nvim'

    -- For vsnip users.
    use 'https://gh.api.99988866.xyz/https://github.com/hrsh7th/cmp-vsnip'
    use 'https://gh.api.99988866.xyz/https://github.com/hrsh7th/vim-vsnip'
    use({
    	"https://gh.api.99988866.xyz/https://github.com/L3MON4D3/LuaSnip",
    	-- follow latest release.
    	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    	-- install jsregexp (optional!:).
    	run = "make install_jsregexp"
    })
    use {'https://gh.api.99988866.xyz/https://github.com/saadparwaiz1/cmp_luasnip'}

    --float term
    use 'https://www.gitclone.com/github.com/voldikss/vim-floaterm'

    --motion
    use {'https://www.gitclone.com/github.com/ggandor/leap.nvim'}

    -- view git diff
    use { 'https://www.gitclone.com/github.com/sindrets/diffview.nvim', 
            requires = 'https://www.gitclone.com/github.com/nvim-lua/plenary.nvim' }
    --use 'https://www.gitclone.com/github.com/airblade/vim-gitgutter'
    use {"https://www.gitclone.com/github.com/lewis6991/gitsigns.nvim"}
    use {"f-person/git-blame.nvim"}

    -- 代码高亮插件
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    --search
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --start page
    use {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    }
    -- 缩进
    use { "https://gh.api.99988866.xyz/https://github.com/shellRaining/hlchunk.nvim.git" }

    use {"https://gh.api.99988866.xyz/https://github.com/tamton-aquib/staline.nvim"}

    use {'petertriho/nvim-scrollbar'}

    --fold
    use {'jghauser/fold-cycle.nvim'}

    -- winbar
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
        require("barbecue").setup()
        end,
        })

    -- terminal 
    use {'s0n7ax/nvim-terminal'}
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}
end)
