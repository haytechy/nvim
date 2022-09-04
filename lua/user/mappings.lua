local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- nvim-tree Mappings --
map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)

-- nvim-telescope Mappings
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
