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

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  use {'maxmx03/fluoromachine.nvim', as = "fluoromachine" }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ('theprimeagen/harpoon')

  use ('mbbill/undotree')

  use ('tpope/vim-fugitive')

  use ('ThePrimeagen/vim-be-good')

  use ('chipsenkbeil/distant.nvim')

--  use ('sunjon/Shade.nvim')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
--		  {                                      -- Optional
--		  'williamboman/mason.nvim',
--		  run = function()
--			  pcall(vim.cmd, 'MasonUpdate')
--		  end,
--	  },
--	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}
if packer_bootstrap then
	  require('packer').sync()
  end
end)

