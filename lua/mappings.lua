local mapKeys = require("utils").mapKeys

vim.g.mapleader = ' '

-- Basic shortcuts
mapKeys("n", "<leader>q", ":q<CR>")
mapKeys("n", "<leader>qq", ":q!<CR>")
mapKeys("n", "<leader>w", ":w<CR>")
mapKeys("n", "<C-j>", "5j<CR>")
mapKeys("n", "<C-k>", "5k<CR>")
mapKeys("n", "<C-w>", "5w<CR>")

-- Telescope shortcuts
vim.cmd [[ nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr> ]]
vim.cmd [[ nnoremap <leader>fw <cmd>lua require('telescope.builtin').live_grep()<cr> ]]
vim.cmd [[ nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr> ]]
vim.cmd [[ nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr> ]]

-- NvimTree shortcuts
mapKeys("n", "<Leader>t", ":NvimTreeToggle<CR>")
mapKeys("n", "<Leader>tf", ":NvimTreeFindFile<CR>")
mapKeys("n", "<Leader>th", ":NvimTreeResize 30<CR>")
mapKeys("n", "<Leader>tl", ":NvimTreeResize 60<CR>")
mapKeys("n", "<Leader>tq", ":NvimTreeClose<CR>")
mapKeys("n", "<Leader>tr", ":NvimTreeRefresh<CR>")

-- BufferLine shortcuts
vim.cmd [[ nnoremap <C-l> :BufferLineCycleNext<CR> ]]
vim.cmd [[ nnoremap <C-h> :BufferLineCyclePrev<CR> ]]

-- CoC Shortcuts
vim.cmd [[ inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>" ]]
vim.cmd [[ inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>" ]]
vim.cmd [[ inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" ]]
