local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- Autotag
  use 'windwp/nvim-ts-autotag'
  -- Autopair
	use "windwp/nvim-autopairs"
  -- Discord Rich Presence
  use 'andweeb/presence.nvim'
  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- Comment Toggle
  use 'terrortylor/nvim-comment'
  -- NVIM Tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  -- Colorschemes
  use 'EdenEast/nightfox.nvim'
  -- Alpha
  use 'goolord/alpha-nvim' -- Start screen
  -- Mason
  use 'williamboman/mason.nvim'
  -- Language Server Protocol
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use "rafamadriz/friendly-snippets"
  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  -- Lualine
  use 'nvim-lualine/lualine.nvim'
  -- Bufferline
  use { 'akinsho/bufferline.nvim', tag = "v2.*" }
  -- Git Signs
  use 'lewis6991/gitsigns.nvim'
  -- Fugitive
  use 'tpope/vim-fugitive'
  -- Surround
  use 'tpope/vim-surround'
  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  -- Toggleterm
  use { "akinsho/toggleterm.nvim", tag = '*' }
  if packer_bootstrap then
    require('packer').sync()
  end
end)
