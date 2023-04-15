return require('packer').startup(function()
    -- packer self
	use 'https://www.gitclone.com/github.com/wbthomason/packer.nvim'

    -- theme
	use 'https://www.gitclone.com/github.com/junegunn/seoul256.vim' --theme

    --nvim tree
	use {
		'https://www.gitclone.com/github.com/kyazdani42/nvim-tree.lua',
		requires = 'https://www.gitclone.com/github.com/kyazdani42/nvim-web-devicons'}
    --lsp
    use 'https://www.gitclone.com/github.com/williamboman/mason.nvim'
    use 'https://www.gitclone.com/github.com/williamboman/mason-lspconfig.nvim'
    use 'https://www.gitclone.com/github.com/p00f/clangd_extensions.nvim'
	use 'https://www.gitclone.com/github.com/neovim/nvim-lspconfig'

    -- cmp
	use 'https://www.gitclone.com/github.com/hrsh7th/cmp-nvim-lsp'
	use 'https://www.gitclone.com/github.com/hrsh7th/cmp-buffer'
	use 'https://www.gitclone.com/github.com/hrsh7th/cmp-path'
	use 'https://www.gitclone.com/github.com/hrsh7th/cmp-cmdline'
	use 'https://www.gitclone.com/github.com/hrsh7th/nvim-cmp'
    use 'https://www.gitclone.com/github.com/f3fora/cmp-spell'
    use 'https://www.gitclone.com/github.com/onsails/lspkind-nvim'
    --float term
    use 'https://www.gitclone.com/github.com/voldikss/vim-floaterm'
    --airline
    use 'https://www.gitclone.com/github.com/vim-airline/vim-airline'
    use 'https://www.gitclone.com/github.com/vim-airline/vim-airline-themes'
    use 'https://www.gitclone.com/github.com/ggandor/leap.nvim'
    use 'https://www.gitclone.com/github.com/airblade/vim-gitgutter'
    -- view git diff
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    -- 代码高亮插件
    use { 'https://www.gitclone.com/github.com/nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    end)
