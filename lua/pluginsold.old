return {
    -- Dap configuraion
    {
        "mfussenegger/nvim-dap"
    },
    -- Dap configuration for python
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
        end,
    },
    -- UI for DAP
    {
        "rcarriga/nvim-dap-ui",
        dependencies = "mfussenegger/nvim-dap",
        config = function()
            require("plugin_config.nvim-dap-ui")
        end,
    },
    -- shows what keys you are using
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = function()
            require("plugin_config.which-key")
        end,
    },
    -- Theme, Nightfox
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require("plugin_config.nightfox")
        end,
    },
    {
        "jinh0/eyeliner.nvim",
        config = function()
            require("plugin_config.eyeliner")
        end,
    },
    {
        "rose-pine/neovim", name = "rose-pine",
        config = function()
            require("plugin_config.rose-pine")
        end,
    },
    -- Sensible default settings
    {
        "tpope/vim-sensible",
    },
    -- Glyphs
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end,
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("plugin_config.bufferline")
        end,
    },
    {
        'goolord/alpha-nvim',
        event = "VimEnter",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("plugin_config.alpha")
        end,
    },
    -- tree file browser
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        tag = "nightly",
        config = function()
            require("plugin_config.nvim-tree")
        end,
    },
    -- preview markdown files in browser
    {
        "toppair/peek.nvim",
        build = "deno task --quiet build:fast",
        config = function()
            require("plugin_config.peek")
        end,
    },
    -- draw indent guides
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("plugin_config.indentline")
        end,
    },
    -- fuzzy finder
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            { "nvim-lua/popup.nvim" },
            { "nvim-lua/plenary.nvim" },
        },
        config = function()
            require("plugin_config.telescope_settings")
            require("plugin_config.telescope")
        end,
    },
    -- better syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("plugin_config.treesitter")
        end,
        build = ":TSUpdate",
    },
    -- Line status bar.
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("plugin_config.lualine")
        end,
    },
    -- show git status in left editor gutter
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("plugin_config.null-ls")
        end,
        requires = { "nvim-lua/plenary.nvim" },
    },
    { "tpope/vim-fugitive" },
    { "nvim-lua/plenary.nvim" },

    -- lsp plugins
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim", },
    { "neovim/nvim-lspconfig" },

    -- cmp completion
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },

    -- use luasnip with cmp
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            require("plugin_config.mason-nvim-dap")
        end,
    },
    -- Mason-null-ls
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
        config = function()
            require("plugin_config.mason-null-ls")
        end,
    },
    {"ThePrimeagen/vim-be-good"},
    {
        "m4xshen/hardtime.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
        opts = {}
    },

}
