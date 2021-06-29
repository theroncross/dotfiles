-- prevent builtin matchit from loading
vim.g.loaded_matchit = 1
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'paq-nvim' {
	'savq/paq-nvim';			-- paq management
	'dense-analysis/ale';			-- autofixing
	'sindrets/diffview.nvim';
	'editorconfig/editorconfig-vim';
	'hoob3rt/lualine.nvim';         	-- statusline
	'hrsh7th/nvim-compe';
	'neovim/nvim-lspconfig';        	-- language server configuration
	'kyazdani42/nvim-tree.lua';     	-- file browser
	'kyazdani42/nvim-web-devicons'; 	-- for file icons
	'nvim-lua/plenary.nvim';
	'nvim-lua/popup.nvim';
	'nvim-telescope/telescope.nvim'; 	-- fuzzy finder
	{'nvim-treesitter/nvim-treesitter', run=vim.fn[':TSUpdate']};
	{'iamcco/markdown-preview.nvim', run=vim.fn['cd app && yarn install']};
	{'mhartington/nvim-typescript', run=vim.fn['./install.sh']};
	'rstacruz/vim-closer';           	-- auto-close braces
	'navarasu/onedark.nvim';         	-- colorscheme
	'tpope/vim-fugitive';            	-- git helpers
	'airblade/vim-gitgutter';        	-- signcolumn git marks
	'andymass/vim-matchup';          	-- better matching
	{'prettier/vim-prettier', run=vim.fn['yarn install']};
	'mhinz/vim-startify';            	-- better start screen
	'folke/which-key.nvim';
}

require('vim-startify-config')
require('which-key-config')
require('compe-config')
require('editor')
require('efm-langserver-config')
-- require('ember-language-server')
require('lualine-config')
require('lsp-config')
require('nvim-tree-config')
require('nvim-treesitter-config')
require('nvim-web-devicons')
require('telescope-config')

vim.cmd 'colorscheme onedark'
