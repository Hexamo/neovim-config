return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- tag = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("neorg").setup {
            load = {
                ["core.completion"] = {
                    config = {
                        engine = "nvim-cmp",
                        name = "[Norg]"
                    }
                },
                ["core.keybinds"] = {
                    -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
                    config = {
                        default_keybinds = true,
                        neorg_leader = "<Leader><Leader>",
                    },
                },
                ["core.integrations.nvim-cmp"] = {},
                ["core.defaults"] = {},  -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = {      -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                            home = "~/notes/home",
                            work = "~/notes/work",
                        },
                    }
                }

            }
        }
    end,
}
