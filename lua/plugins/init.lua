return {
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>rg", "<cmd>Telescope live_grep<cr>",  desc = "Find String" },
        },
    },
    -- Colorscheme
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("plugins.config.lualine")
        end,
    },
    -- Neo-tree
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
        config = function()
            require("plugins.config.oil")
        end,
    },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require("plugins.config.treesitter")
        end,
    },
    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        },
        config = function()
            require("plugins.config.lsp")
        end,
    },
    {
        "christoomey/vim-tmux-navigator"
    },
}
