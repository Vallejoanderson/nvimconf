local mapKeys = require("utils").mapKeys

vim.g.mapleader = ' '

mapKeys("n", "<leader>q", ":q<CR>")
mapKeys("n", "<leader>qq", ":q!<CR>")
mapKeys("n", "<leader>w", ":w<CR>")
