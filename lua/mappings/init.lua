local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- NvimTree Mappings -- 
map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)

-- Telescope Mappings --
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
