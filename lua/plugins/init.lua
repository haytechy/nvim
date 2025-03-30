return {
    -- fzf
    {
        "ibhagwan/fzf-lua",
        keys = {
            { "<leader>ff", "<cmd>lua require('fzf-lua').files()<cr>", desc = "Find Files" },
            { "<leader>fg", "<cmd>lua require('fzf-lua').live_grep()<cr>", desc = "Find Files" },
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
        version = '1.*',
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = { documentation = { auto_show = false } },
            default = { 'lsp', 'path', 'snippets', 'buffer' },
                sources = {
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
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
