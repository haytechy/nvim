return {
    -- fzf
    {
        "ibhagwan/fzf-lua",
        keys = {
            { "<leader>ff", "<cmd>lua require('fzf-lua').files()<cr>", desc = "Find Files" },
        },
        config = function()
            require("plugins.config.fzf-lua")
        end
    },
    -- Colorscheme
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    -- nvim-oil 
    {
        'stevearc/oil.nvim',
        config = function()
            require("plugins.config.oil")
        end,
    },
    -- StatusLine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("plugins.config.lualine")
        end,
    },
    -- Snacks
    {
        "folke/snacks.nvim",
        dependencies = {'echasnovski/mini.icons', version = false },
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true},
            picker = {enabled = true},
        },
        keys = {
            { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        }
    },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require("plugins.config.treesitter")
        end,
    },
    -- Autocomplete
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',
        version = '*',
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = 'mono'
            },
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    },
    -- LSP
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'saghen/blink.cmp',
            'williamboman/mason.nvim',
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require("plugins.config.lsp")
        end,
    },
    {
        "christoomey/vim-tmux-navigator"
    },
}
