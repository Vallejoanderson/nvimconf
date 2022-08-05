require('options')
require('mappings')
require('plugins')

local lualine = require "lualine"
lualine.setup {
  options = {
    theme = "tokyonight"
  }
}

-- Nvim-Tree Configuration
require("nvim-tree").setup()
local tree = require("nvim-tree")
tree.setup()

-- Colorscheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- BufferLine Configuration
vim.opt.termguicolors = true
require("bufferline").setup{}

--[[ LSP Config
require'lspconfig'.vuels.setup{}
require'lspconfig'.tsserver.setup{}
require("nvim-lsp-installer").setup {}

local nvim_lsp = require("lspconfig")

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  root_dir = nvim_lsp.util.root_pattern("tsconfig.json"),
}

local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  sources = {
    { name = 'path' },
    { name = 'nvim_lsp', keyword_length = 2 },
    { name = 'buffer', keyword_length = 4 },
    { name = 'luasnip', keyword_length = 3 },
    { name = 'nvim_lsp_signature_help' }
  }
})
--]]
