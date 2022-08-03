require('options')
require('mappings')
require('plugins')

local lualine = require "lualine"
lualine.setup {
  options = {
    theme = "tokyonight"
  }
}
require("nvim-tree").setup()
local tree = require("nvim-tree")
tree.setup()

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.opt.termguicolors = true
require("bufferline").setup{}

-- LSP Config
require'lspconfig'.vuels.setup{}
require("nvim-lsp-installer").setup {}
