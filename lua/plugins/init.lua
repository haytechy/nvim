return {
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>rg", "<cmd>Telescope live_grep<cr>",  desc = "Find String" },
        },
    },
    -- Colorscheme
    {
        'rebelot/kanagawa.nvim',
        config = function()
            vim.cmd([[colorscheme kanagawa]])
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
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<C-n>", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
        },
        config = function()
            require("plugins.config.neo-tree")
        end,
    },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            vim.fn.sign_define("DiagnosticSignError",
                { text = " ", texthl = "DiagnosticSignError" })
            vim.fn.sign_define("DiagnosticSignWarn",
                { text = " ", texthl = "DiagnosticSignWarn" })
            vim.fn.sign_define("DiagnosticSignInfo",
                { text = " ", texthl = "DiagnosticSignInfo" })
            vim.fn.sign_define("DiagnosticSignHint",
                { text = "󰌵", texthl = "DiagnosticSignHint" })
            require("plugins.config.treesitter")
        end,
    },
    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        lazy = false,
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        },
        config = function()
            require("plugins.config.lsp")
        end,
    }
}
