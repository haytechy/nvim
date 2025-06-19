return {
    -- fzf
    {
        "ibhagwan/fzf-lua",
        lazy = false,
        keys = {
            { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
            { "<leader>rg", "<cmd>FzfLua live_grep<cr>", desc = "Find Files" },
        },
        dependencies = { "nvim-tree/nvim-web-devicons" },
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
        dependencies = {'rafamadriz/friendly-snippets'},
        version = '1.*',
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = { documentation = { auto_show = false } },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    -- Mason
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "christoomey/vim-tmux-navigator"
    },
}
