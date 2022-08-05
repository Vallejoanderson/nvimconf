vim.cmd("packadd packer.nvim")
return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
   },
  }
  use "nvim-lualine/lualine.nvim"
  use "folke/tokyonight.nvim"
  use { "ellisonleao/gruvbox.nvim" }
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use("L3MON4D3/LuaSnip")
  use("nvim-treesitter/nvim-treesitter")
  use {'neoclide/coc.nvim', branch = 'release'}
  --[[use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp-signature-help")
  use("hrsh7th/nvim-cmp")
  --]]
end
)
