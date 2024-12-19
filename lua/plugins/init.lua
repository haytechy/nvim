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
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require("plugins.config.treesitter")
        end,
    },
    -- Snacks
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true},
        },
    },
    -- Mini
    {
        'echasnovski/mini.nvim',
        version = false,
        config = function()
            require("mini.icons").setup()
            require("mini.statusline").setup()
        end,
    },
    -- Autocomplete
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',
        version = 'v0.*',
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = 'mono'
            },
        }
    },
    -- LSP
    {
        'neovim/nvim-lspconfig',
        dependencies = 'saghen/blink.cmp',
        config = function()
            require("plugins.config.lsp")
        end,
    },
    {
        "christoomey/vim-tmux-navigator"
    },
}
