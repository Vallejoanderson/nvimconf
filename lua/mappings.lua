local mapKeys = require("utils").mapKeys

vim.g.mapleader = ' '

mapKeys("n", "<leader>q", ":q<CR>")
mapKeys("n", "<leader>qq", ":q!<CR>")
mapKeys("n", "<leader>w", ":w<CR>")

vim.cmd [[ nnoremap <leader>sf <cmd>lua require('telescope.builtin').find_files()<cr> ]]
vim.cmd [[ nnoremap <leader>sw <cmd>lua require('telescope.builtin').live_grep()<cr> ]]
vim.cmd [[ nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr> ]]
vim.cmd [[ nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr> ]]
