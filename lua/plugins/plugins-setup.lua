-- Automatically install plugins
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
	augroup end
]])

return require('packer').startup(function(use)
	-- packer
  use 'wbthomason/packer.nvim'
	-- themes
	use 'folke/tokyonight.nvim'	 -- theme : tokyonight
	use 'marko-cerovac/material.nvim' -- theme: material
	-- lualine
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'

	-- nvim-tree
	use 'nvim-tree/nvim-tree.lua'

	-- tmux-navigator
	use 'christoomey/vim-tmux-navigator'
	use 'p00f/nvim-ts-rainbow'
	-- sytax highlight
	use {
		'nvim-treesitter/nvim-treesitter',
			run = function()
					local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
					ts_update()
			end,
	}

	-- lsp	
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- mason
    "neovim/nvim-lspconfig"
  }
	-- lsp ui
	use{"glepnir/lspsaga.nvim"}
	use {'simrat39/symbols-outline.nvim'}

  -- completioin
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"  -- snip engineer
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path"

	use "numToStr/Comment.nvim" -- gc comment
	use "windwp/nvim-autopairs"

	use "akinsho/bufferline.nvim" -- bufferline
  use "lewis6991/gitsigns.nvim" -- gitsigns

	-- telescopes
	use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- 文件检索
    'nvim-lua/plenary.nvim'
  }

	-- dap
	use 'mfussenegger/nvim-dap'
	use 'theHamsta/nvim-dap-virtual-text'
	use "rcarriga/nvim-dap-ui"

	-- chatgpt
	use({
  "jackMort/ChatGPT.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
	})

  if packer_bootstrap then
    require('packer').sync()
  end
end)
