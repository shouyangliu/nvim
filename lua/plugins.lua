return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'junegunn/seoul256.vim' --theme
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'}
    --lsp
    use 'williamboman/nvim-lsp-installer'
    use 'p00f/clangd_extensions.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind-nvim'
    --float term
    use 'voldikss/vim-floaterm'
    --airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'ggandor/leap.nvim'
--    use {'https://www.gitclone.com/github.com/tanvirtin/vgit.nvim',
--        requires = 'https://www.gitclone.com/github.com/nvim-lua/plenary.nvim'}
    use 'https://www.gitclone.com/github.com/airblade/vim-gitgutter'
    end)
